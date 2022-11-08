.class public Lcom/android/launcher3/settings/PreferenceHighlighter;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PreferenceHighlighter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/settings/PreferenceHighlighter$HighlightDelegate;
    }
.end annotation


# static fields
.field private static final END_COLOR:I

.field private static final HIGHLIGHT_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/settings/PreferenceHighlighter;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIGHLIGHT_DURATION:J = 0x3a98L

.field private static final HIGHLIGHT_FADE_IN_DURATION:J = 0xc8L

.field private static final HIGHLIGHT_FADE_OUT_DURATION:J = 0x1f4L


# instance fields
.field private final mDrawRect:Landroid/graphics/RectF;

.field private mHighLightStarted:Z

.field private mHighlightColor:I

.field private final mIndex:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPreference:Landroidx/preference/Preference;

.field private final mRv:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHighlightColor(Lcom/android/launcher3/settings/PreferenceHighlighter;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighlightColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRv(Lcom/android/launcher3/settings/PreferenceHighlighter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHighlightColor(Lcom/android/launcher3/settings/PreferenceHighlighter;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighlightColor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveHighlight(Lcom/android/launcher3/settings/PreferenceHighlighter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/settings/PreferenceHighlighter;->removeHighlight()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/android/launcher3/settings/PreferenceHighlighter$1;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "highlightColor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/settings/PreferenceHighlighter$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/settings/PreferenceHighlighter;->HIGHLIGHT_COLOR:Landroid/util/Property;

    .line 62
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    sput v0, Lcom/android/launcher3/settings/PreferenceHighlighter;->END_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/preference/Preference;)V
    .locals 1
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "index"    # I
    .param p3, "preference"    # Landroidx/preference/Preference;

    .line 73
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mDrawRect:Landroid/graphics/RectF;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighLightStarted:Z

    .line 71
    sget v0, Lcom/android/launcher3/settings/PreferenceHighlighter;->END_COLOR:I

    iput v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighlightColor:I

    .line 74
    iput-object p1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    iput p2, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mIndex:I

    .line 76
    iput-object p3, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mPreference:Landroidx/preference/Preference;

    .line 77
    return-void
.end method

.method private removeHighlight()V
    .locals 4

    .line 124
    sget-object v0, Lcom/android/launcher3/settings/PreferenceHighlighter;->HIGHLIGHT_COLOR:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighlightColor:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/launcher3/settings/PreferenceHighlighter;->END_COLOR:I

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 126
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 127
    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 128
    new-instance v1, Lcom/android/launcher3/settings/PreferenceHighlighter$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/settings/PreferenceHighlighter$3;-><init>(Lcom/android/launcher3/settings/PreferenceHighlighter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 134
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 135
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 87
    iget v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mIndex:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 88
    .local v0, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighLightStarted:Z

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$State;->getRemainingScrollVertical()I

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    return-void

    .line 96
    :cond_1
    iget-boolean v1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighLightStarted:Z

    if-nez v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x42

    invoke-static {v1, v2}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v1

    .line 99
    .local v1, "colorTo":I
    sget-object v2, Lcom/android/launcher3/settings/PreferenceHighlighter;->HIGHLIGHT_COLOR:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x0

    sget v6, Lcom/android/launcher3/settings/PreferenceHighlighter;->END_COLOR:I

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 101
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 102
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 103
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 104
    new-instance v3, Lcom/android/launcher3/settings/PreferenceHighlighter$2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/settings/PreferenceHighlighter$2;-><init>(Lcom/android/launcher3/settings/PreferenceHighlighter;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 110
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 111
    iput-boolean v5, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighLightStarted:Z

    .line 114
    .end local v1    # "colorTo":I
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 115
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighlightColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v2, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mDrawRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 117
    iget-object v2, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mPreference:Landroidx/preference/Preference;

    instance-of v3, v2, Lcom/android/launcher3/settings/PreferenceHighlighter$HighlightDelegate;

    if-eqz v3, :cond_3

    .line 118
    check-cast v2, Lcom/android/launcher3/settings/PreferenceHighlighter$HighlightDelegate;

    iget-object v3, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mDrawRect:Landroid/graphics/RectF;

    invoke-interface {v2, v1, v3}, Lcom/android/launcher3/settings/PreferenceHighlighter$HighlightDelegate;->offsetHighlight(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 120
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 121
    return-void
.end method

.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mIndex:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 83
    return-void
.end method
