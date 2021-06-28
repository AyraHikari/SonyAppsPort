.class public interface abstract Lcom/google/android/gms/cast/games/GameManagerState;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getApplicationName()Ljava/lang/CharSequence;
.end method

.method public abstract getGameData()Lorg/json/JSONObject;
.end method

.method public abstract getGameStatusText()Ljava/lang/CharSequence;
.end method

.method public abstract getGameplayState()I
.end method

.method public abstract getLobbyState()I
.end method

.method public abstract getMaxPlayers()I
.end method

.method public abstract getPlayer(Ljava/lang/String;)Lcom/google/android/gms/cast/games/PlayerInfo;
.end method

.method public abstract getPlayers()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/cast/games/PlayerInfo;",
            ">;"
        }
    .end annotation
.end method
