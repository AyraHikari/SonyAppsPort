.class Lcom/sonyericsson/music/MusicActivity$23;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicActivity;->checkAndPurgeMusicStoreDatabase()V
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

    .line 2349
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$23;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iput-object p2, p0, Lcom/sonyericsson/music/MusicActivity$23;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2352
    new-instance v0, Lcom/sonyericsson/music/metadata/UpdateMusicInfo;

    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity$23;->val$ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/metadata/UpdateMusicInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/UpdateMusicInfo;->cleanUpUnusedArt()V

    return-void
.end method
