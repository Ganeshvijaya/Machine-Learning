function plotGradient(theta_history, J_history, iterations)
  
  hold on;
  theta_history1 = zeros(iterations,1);
  theta_history2 = zeros(iterations,1);

  J_history = J_history';
  theta_history1 = theta_history(:,1);
  theta_history2 = theta_history(:,2);
  theta_history1 = theta_history1';
  theta_history2 = theta_history2';
  
  %size(theta_history1)
  %size(theta_history2)
  %size(J_history)

  plot3(theta_history1,theta_history2,J_history, '-o','Color','r','MarkerSize',10);


  hold off;
  
endfunction
