.class Lcom/sonyericsson/music/MusicActivity$12$1;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicActivity$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/MusicActivity$12;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity$12;)V
    .locals 0

    .line 963
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$12$1;->this$1:Lcom/sonyericsson/music/MusicActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$12$1;->this$1:Lcom/sonyericsson/music/MusicActivity$12;

    iget-object v0, v0, Lcom/sonyericsson/music/MusicActivity$12;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->loadPlayQueueIfEmpty()V

    return-void
.end method
