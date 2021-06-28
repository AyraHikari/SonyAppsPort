.class Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/player/PlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommitPendingPlayQueuePositionRunnable"
.end annotation


# instance fields
.field private mForcePlay:Z

.field final synthetic this$0:Lcom/sonyericsson/music/player/PlayerController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/player/PlayerController;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 791
    iput-boolean p1, p0, Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;->mForcePlay:Z

    return-void
.end method


# virtual methods
.method forcePlay(Z)V
    .locals 0

    .line 797
    iput-boolean p1, p0, Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;->mForcePlay:Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    iget-boolean v1, p0, Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;->mForcePlay:Z

    invoke-static {v0, v1}, Lcom/sonyericsson/music/player/PlayerController;->access$500(Lcom/sonyericsson/music/player/PlayerController;Z)V

    return-void
.end method
