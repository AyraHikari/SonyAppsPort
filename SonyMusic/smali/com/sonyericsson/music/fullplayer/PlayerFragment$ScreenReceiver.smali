.class Lcom/sonyericsson/music/fullplayer/PlayerFragment$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/fullplayer/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)V
    .locals 0

    .line 1271
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ScreenReceiver;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;)V
    .locals 0

    .line 1271
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ScreenReceiver;-><init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1274
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 1275
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1276
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ScreenReceiver;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$702(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Z)Z

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 1277
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1278
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ScreenReceiver;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$702(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
