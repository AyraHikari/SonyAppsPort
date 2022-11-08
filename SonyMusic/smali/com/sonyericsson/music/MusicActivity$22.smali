.class Lcom/sonyericsson/music/MusicActivity$22;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicActivity;->clearMUFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicActivity;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Context;)V
    .locals 0

    .line 2335
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$22;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iput-object p2, p0, Lcom/sonyericsson/music/MusicActivity$22;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2338
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$22;->val$ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2339
    invoke-static {v0}, Lcom/sonyericsson/music/common/MusicUtils;->deleteMUFiles(Landroid/content/Context;)V

    .line 2340
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$22;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setMUFilesCleared(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
