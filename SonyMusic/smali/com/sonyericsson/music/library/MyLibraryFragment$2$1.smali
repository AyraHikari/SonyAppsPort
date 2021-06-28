.class Lcom/sonyericsson/music/library/MyLibraryFragment$2$1;
.super Ljava/lang/Object;
.source "MyLibraryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/MyLibraryFragment$2;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/library/MyLibraryFragment$2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/MyLibraryFragment$2;I)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$2$1;->this$1:Lcom/sonyericsson/music/library/MyLibraryFragment$2;

    iput p2, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$2$1;->this$1:Lcom/sonyericsson/music/library/MyLibraryFragment$2;

    iget-object v0, v0, Lcom/sonyericsson/music/library/MyLibraryFragment$2;->this$0:Lcom/sonyericsson/music/library/MyLibraryFragment;

    iget-object v0, v0, Lcom/sonyericsson/music/library/MyLibraryFragment;->mSlidingTabLayout:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    iget v1, p0, Lcom/sonyericsson/music/library/MyLibraryFragment$2$1;->val$position:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->scrollToTab(II)V

    return-void
.end method
