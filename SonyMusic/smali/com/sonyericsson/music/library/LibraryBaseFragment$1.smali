.class Lcom/sonyericsson/music/library/LibraryBaseFragment$1;
.super Ljava/lang/Object;
.source "LibraryBaseFragment.java"

# interfaces
.implements Lcom/sonyericsson/music/MediaServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/LibraryBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/LibraryBaseFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/LibraryBaseFragment;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment$1;->this$0:Lcom/sonyericsson/music/library/LibraryBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaServiceConnected(Lcom/sonyericsson/music/player/PlayerController;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment$1;->this$0:Lcom/sonyericsson/music/library/LibraryBaseFragment;

    iput-object p1, v0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    .line 41
    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onPlayerControllerConnected()V

    return-void
.end method

.method public onMediaServiceDisconnected()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment$1;->this$0:Lcom/sonyericsson/music/library/LibraryBaseFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onPlayerControllerDisconnected()V

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment$1;->this$0:Lcom/sonyericsson/music/library/LibraryBaseFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    return-void
.end method
