.class Lcom/sonyericsson/music/common/MusicUtils$1;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/common/MusicUtils;->openPlayerFragment(Landroid/app/Activity;ZLandroidx/fragment/app/Fragment;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$onBackStack:Z

.field final synthetic val$player:Landroidx/fragment/app/Fragment;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/sonyericsson/music/common/MusicUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sonyericsson/music/common/MusicUtils$1;->val$player:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcom/sonyericsson/music/common/MusicUtils$1;->val$tag:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sonyericsson/music/common/MusicUtils$1;->val$onBackStack:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/music/common/MusicUtils$1;->val$activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v1, :cond_1

    .line 187
    move-object v1, v0

    check-cast v1, Lcom/sonyericsson/music/MusicActivity;

    .line 188
    invoke-static {v0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-virtual {v1}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/common/MusicUtils$1;->val$player:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/sonyericsson/music/common/MusicUtils$1;->val$tag:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sonyericsson/music/common/MusicUtils$1;->val$onBackStack:Z

    xor-int/lit8 v4, v3, 0x1

    .line 192
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    :cond_1
    return-void
.end method
