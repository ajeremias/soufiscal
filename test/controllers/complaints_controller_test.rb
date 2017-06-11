require 'test_helper'

class ComplaintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complaint = complaints(:one)
  end

  test "should get index" do
    get complaints_url
    assert_response :success
  end

  test "should get new" do
    get new_complaint_url
    assert_response :success
  end

  test "should create complaint" do
    assert_difference('Complaint.count') do
      post complaints_url, params: { complaint: { anonimo: @complaint.anonimo, data_fim_obra: @complaint.data_fim_obra, data_inicio_obra: @complaint.data_inicio_obra, data_reclamacao: @complaint.data_reclamacao, detalhe: @complaint.detalhe, geolocalizacao: @complaint.geolocalizacao, nome: @complaint.nome, numero_contrato: @complaint.numero_contrato, status: @complaint.status, user_id: @complaint.user_id, valor_inicial_estimado: @complaint.valor_inicial_estimado } }
    end

    assert_redirected_to complaint_url(Complaint.last)
  end

  test "should show complaint" do
    get complaint_url(@complaint)
    assert_response :success
  end

  test "should get edit" do
    get edit_complaint_url(@complaint)
    assert_response :success
  end

  test "should update complaint" do
    patch complaint_url(@complaint), params: { complaint: { anonimo: @complaint.anonimo, data_fim_obra: @complaint.data_fim_obra, data_inicio_obra: @complaint.data_inicio_obra, data_reclamacao: @complaint.data_reclamacao, detalhe: @complaint.detalhe, geolocalizacao: @complaint.geolocalizacao, nome: @complaint.nome, numero_contrato: @complaint.numero_contrato, status: @complaint.status, user_id: @complaint.user_id, valor_inicial_estimado: @complaint.valor_inicial_estimado } }
    assert_redirected_to complaint_url(@complaint)
  end

  test "should destroy complaint" do
    assert_difference('Complaint.count', -1) do
      delete complaint_url(@complaint)
    end

    assert_redirected_to complaints_url
  end
end
