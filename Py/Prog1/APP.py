import streamlit as st ;

with st.form(key="incluir_cliente"):
    input_name = st.text_input(label ="inserir o nome ")
    input_age = st.number_input(label ="inserir o Idade ",format="%d",step=1)
    input_occupation= st.selectbox(label ="inserir o nome ",options=["1º","2","3"])
    input_buton_submit = st.form_submit_button("enviar")

if input_buton_submit:
    st.write(f'nome:{input_name}')
    st.write(f'nome:{input_age}')
    st.write(f'nome:{input_occupation}')
    