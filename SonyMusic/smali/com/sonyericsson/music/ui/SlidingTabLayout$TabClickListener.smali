.class Lcom/sonyericsson/music/ui/SlidingTabLayout$TabClickListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ui/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/ui/SlidingTabLayout;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$TabClickListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/ui/SlidingTabLayout;Lcom/sonyericsson/music/ui/SlidingTabLayout$1;)V
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/SlidingTabLayout$TabClickListener;-><init>(Lcom/sonyericsson/music/ui/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 348
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$TabClickListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-static {v1}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->access$200(Lcom/sonyericsson/music/ui/SlidingTabLayout;)Lcom/sonyericsson/music/ui/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$TabClickListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-static {v1}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->access$200(Lcom/sonyericsson/music/ui/SlidingTabLayout;)Lcom/sonyericsson/music/ui/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/sonyericsson/music/ui/SlidingTabLayout$TabClickListener;->this$0:Lcom/sonyericsson/music/ui/SlidingTabLayout;

    invoke-static {p1}, Lcom/sonyericsson/music/ui/SlidingTabLayout;->access$400(Lcom/sonyericsson/music/ui/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
