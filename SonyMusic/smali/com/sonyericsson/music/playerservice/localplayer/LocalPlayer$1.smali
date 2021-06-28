.class Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$1;
.super Ljava/lang/Object;
.source "LocalPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mNbrOfErrorsInARow:I

    return-void
.end method
