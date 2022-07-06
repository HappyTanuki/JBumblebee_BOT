import discord4j.core.DiscordClient;
//import discord4j.core.DiscordClientBuilder;
import discord4j.core.GatewayDiscordClient;
import reactor.core.publisher.Mono;
import java.util.Scanner;

public final class BumblebeeCore {
	public static void main(final String[] args) {
		final String		token	= "";
		Scanner scanner = new Scanner(System.in);

		while (token.length() != 70){
			System.out.print("Enter Token: ");
			token = scanner.next();
		}

		final DiscordClient	client	= DiscordClient.create(token);

		Mono<Void> login = client.withGateway((GatewayDiscordClient gateway) -> Mono.empty());

		login.block();
	}
}
