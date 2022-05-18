.class Lcom/sonyericsson/music/MusicActivity$15;
.super Ljava/lang/Thread;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicActivity;->initDrmUtils()V
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

    .line 1391
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$15;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1394
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$15;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicActivity;->access$800(Lcom/sonyericsson/music/MusicActivity;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/music/common/DrmUtilsImpl;

    iget-object v2, p0, Lcom/sonyericsson/music/MusicActivity$15;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/common/DrmUtilsImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
