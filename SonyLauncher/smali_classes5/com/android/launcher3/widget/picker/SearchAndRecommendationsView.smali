.class public Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;
.super Landroid/widget/LinearLayout;
.source "SearchAndRecommendationsView.java"


# instance fields
.field private mController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;->mController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;->mController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setSearchAndRecommendationScrollController(Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    .line 50
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;->mController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    .line 51
    return-void
.end method
