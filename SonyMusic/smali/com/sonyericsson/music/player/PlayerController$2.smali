.class Lcom/sonyericsson/music/player/PlayerController$2;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/player/PlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/player/PlayerController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/player/PlayerController;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/sonyericsson/music/player/PlayerController$2;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController$2;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    invoke-static {v0}, Lcom/sonyericsson/music/player/PlayerController;->access$000(Lcom/sonyericsson/music/player/PlayerController;)V

    return-void
.end method
