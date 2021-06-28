.class Lcom/sonyericsson/music/MusicActivity$OpenPlayerFragmentWhenAllowed;
.super Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$ToDoWhenFragmentAllowed;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenPlayerFragmentWhenAllowed"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2298
    invoke-direct {p0}, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$ToDoWhenFragmentAllowed;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/MusicActivity$1;)V
    .locals 0

    .line 2298
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity$OpenPlayerFragmentWhenAllowed;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2301
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2302
    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/MusicUtils;->openPlayerFragment(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method
