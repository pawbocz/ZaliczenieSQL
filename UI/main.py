import mysql.connector
import streamlit as st 
import pandas as pd

conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='123456',
    database='vhs_rent'
)

cursor = conn.cursor()

def delete_record(table_name, record_id,column_name_delete):
    
    delete_query = f"DELETE FROM {table_name} WHERE {column_name_delete} = {record_id};"
    cursor.execute(delete_query)
    conn.commit()


def update_record(table_name, record_id, column_name, new_value,id_column_update):
    
    update_query = f"UPDATE {table_name} SET {column_name} = '{new_value}' WHERE {id_column_update} = {record_id};"
    cursor.execute(update_query)
    conn.commit()


def pobierz_nazwy_tabel():
    cursor.execute("SHOW TABLES")
    result = cursor.fetchall()
    nazwy_tabel = [table[0] for table in result]
    return nazwy_tabel


def pobierz_dane_z_tabeli(nazwa_tabeli):
    cursor.execute(f"SELECT * FROM {nazwa_tabeli}")
    result = cursor.fetchall()
    columns = [desc[0] for desc in cursor.description]
    df = pd.DataFrame(result, columns=columns)
    return df


def main():
    st.title("Wyświetlanie danych z tabeli w bazie danych MySQL")

    
    nazwy_tabel = pobierz_nazwy_tabel()

    
    nazwa_wybranej_tabeli = st.selectbox("Wybierz tabelę:", nazwy_tabel)

    
    if st.button("Wyświetl tabelę"):
        if nazwa_wybranej_tabeli:
            dane_tabeli = pobierz_dane_z_tabeli(nazwa_wybranej_tabeli)
            st.write(f"Dane z tabeli '{nazwa_wybranej_tabeli}':")
            st.write(dane_tabeli)
        else:
            st.warning("Wybierz tabelę przed kliknięciem guzika.")

    niestandardowe_zapytanie = st.text_input("Wprowadź niestandardowe zapytanie SQL:")

    if st.button("Wykonaj zapytanie SQL"):
        if niestandardowe_zapytanie:
            cursor.execute(niestandardowe_zapytanie)
            conn.commit()
            st.success('Niestandardowe zapytanie zostało pomyślnie wykonane!', icon="✅")
            
        else:
            st.warning("Wprowadź niestandardowe zapytanie przed kliknięciem guzika.")
    

#                                      Wszystko działa EZ!!!!
    st.header("Usuń rekord")
    column_name_delete=st.text_input("Podaj nazwe kolumny z ID (np.ID_Rezysera w tabeli rezyserzy)")
    record_id_delete = st.number_input(f"Podaj ID rekordu do usunięcia z tabeli {nazwa_wybranej_tabeli}:", min_value=1)
    if st.button("Usuń rekord"):
        delete_record(nazwa_wybranej_tabeli, record_id_delete,column_name_delete)
        st.success(f"Rekord o ID {record_id_delete} został pomyślnie usunięty z tabeli {nazwa_wybranej_tabeli}.",icon="👌")

    st.header("Modyfikuj rekord")
    record_id_update = st.number_input(f"Podaj ID rekordu do modyfikacji w tabeli {nazwa_wybranej_tabeli}:", min_value=1)
    id_column_update=st.text_input("Podaj nazwe kolumny z ID")
    column_name_update = st.text_input("Podaj nazwę kolumny do modyfikacji:")
    new_value_update = st.text_input("Podaj nową wartość:")
    if st.button("Zaktualizuj rekord"):
        update_record(nazwa_wybranej_tabeli, record_id_update, column_name_update, new_value_update,id_column_update)
        st.success(f"Rekord o ID {record_id_update} został pomyślnie zaktualizowany w tabeli {nazwa_wybranej_tabeli}.")

if __name__ == "__main__":
    main()