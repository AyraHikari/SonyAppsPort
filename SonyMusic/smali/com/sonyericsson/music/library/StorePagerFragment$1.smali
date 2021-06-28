.class Lcom/sonyericsson/music/library/StorePagerFragment$1;
.super Ljava/lang/Object;
.source "StorePagerFragment.java"

# interfaces
.implements Lcom/sonyericsson/music/ui/SlidingTabLayout$TabColorizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/StorePagerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/StorePagerFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/StorePagerFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sonyericsson/music/library/StorePagerFragment$1;->this$0:Lcom/sonyericsson/music/library/StorePagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDividerColor(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getIndicatorColor(I)I
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/sonyericsson/music/library/StorePagerFragment$1;->this$0:Lcom/sonyericsson/music/library/StorePagerFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    invoke-static {p1}, Lcom/sonyericsson/music/common/ThemeColor;->accent(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
