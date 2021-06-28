.class Lcom/sonyericsson/music/search/SearchFragment$4;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/sonyericsson/music/MediaServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/search/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/search/SearchFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/search/SearchFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$4;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaServiceConnected(Lcom/sonyericsson/music/player/PlayerController;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$4;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    iput-object p1, v0, Lcom/sonyericsson/music/search/SearchFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    return-void
.end method

.method public onMediaServiceDisconnected()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$4;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sonyericsson/music/search/SearchFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    return-void
.end method
