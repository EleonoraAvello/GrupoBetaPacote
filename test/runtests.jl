using GrupoBeta
using Test

@testset "Algoritmo_QR" begin
  E = [1 1 1; 1 2 1; 1 1 3]
  @test isapprox(autovalores(E), [4.214319 0.0 0.0; 0.0 1.460811 0.0; 0.0 0.0 0.324869], rtol = 1e-4) 
  @test isapprox(autovetores(E), [0.39711 0.23319 -0.88765; 0.52065 0.73923 0.42713; 0.75578 -0.63178 0.17214], rtol = 1e-4)
  @test isapprox(iteracoes_QR(E), 24, rtol = 1e-1)
end

@testset "Metodo_potencias" begin
  A = [1 2; 3 2]
  @test isapprox(autovalor_dominante(A), 4, rtol = 1e-4) 
  @test isapprox(autovetor_dominante(A), [0.55470; 0.83204], rtol = 1e-4)
  @test isapprox(iteracoes_potencias(A), 10, rtol = 1e-1)
end 