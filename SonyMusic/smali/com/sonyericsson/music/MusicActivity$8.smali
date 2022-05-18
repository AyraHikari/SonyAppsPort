.class Lcom/sonyericsson/music/MusicActivity$8;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 616
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$8;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$8;->this$0:Lcom/sonyericsson/music/MusicActivity;

    new-instance v1, Lcom/sonyericsson/music/MusicActivity$8$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/MusicActivity$8$1;-><init>(Lcom/sonyericsson/music/MusicActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
