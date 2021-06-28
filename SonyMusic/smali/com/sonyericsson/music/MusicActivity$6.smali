.class Lcom/sonyericsson/music/MusicActivity$6;
.super Lcom/sonyericsson/music/player/PlayerStateListener$PlayerStateAdapter;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$6;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerStateListener$PlayerStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteIdChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 0

    .line 534
    invoke-super {p0, p1}, Lcom/sonyericsson/music/player/PlayerStateListener$PlayerStateAdapter;->onRouteIdChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 536
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$6;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/MusicActivity;->access$400(Lcom/sonyericsson/music/MusicActivity;)V

    return-void
.end method
