.class Lcom/sonyericsson/music/MusicActivity$3$1;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicActivity$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/MusicActivity$3;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity$3;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$3$1;->this$1:Lcom/sonyericsson/music/MusicActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$3$1;->this$1:Lcom/sonyericsson/music/MusicActivity$3;

    iget-object v0, v0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    new-instance v1, Lcom/sonyericsson/music/MusicActivity$3$1$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/MusicActivity$3$1$1;-><init>(Lcom/sonyericsson/music/MusicActivity$3$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
