.class public Landroidx/slice/widget/SliceView;
.super Landroid/view/ViewGroup;
.source "SliceView.java"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceView$SliceMode;,
        Landroidx/slice/widget/SliceView$OnSliceActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/ViewGroup;",
        "Landroidx/lifecycle/Observer<",
        "Landroidx/slice/Slice;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final MODE_LARGE:I = 0x2

.field public static final MODE_SHORTCUT:I = 0x3

.field public static final MODE_SMALL:I = 0x1

.field private static final REFRESH_LAST_UPDATED_IN_MILLIS:I = 0xea60

.field public static final SLICE_ACTION_PRIORITY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SliceView"


# instance fields
.field private mActionRow:Landroidx/slice/widget/ActionRow;

.field private mActionRowHeight:I

.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field mClickInfo:[I

.field private mCurrentSlice:Landroidx/slice/Slice;

.field private mCurrentSliceLoggedVisible:Z

.field private mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

.field mCurrentView:Landroidx/slice/widget/SliceChildView;

.field private mDownX:I

.field private mDownY:I

.field mHandler:Landroid/os/Handler;

.field mInLongpress:Z

.field private mLargeHeight:I

.field mListContent:Landroidx/slice/widget/ListContent;

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field mLongpressCheck:Ljava/lang/Runnable;

.field private mMinTemplateHeight:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field mPressing:Z

.field mRefreshLastUpdated:Ljava/lang/Runnable;

.field private mShortcutSize:I

.field private mShowActionDividers:Z

.field private mShowActions:Z

.field private mShowHeaderDivider:Z

.field private mShowLastUpdated:Z

.field private mShowTitleItems:Z

.field mSliceMetadata:Landroidx/slice/SliceMetadata;

.field private mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field private mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field private mThemeTintColor:I

.field private mTouchSlopSquared:I

.field private mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 976
    new-instance v0, Landroidx/slice/widget/SliceView$3;

    invoke-direct {v0}, Landroidx/slice/widget/SliceView$3;-><init>()V

    sput-object v0, Landroidx/slice/widget/SliceView;->SLICE_ACTION_PRIORITY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/SliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 193
    sget v0, Landroidx/slice/view/R$attr;->sliceViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/widget/SliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 197
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    .line 165
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    .line 166
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowTitleItems:Z

    .line 167
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowHeaderDivider:Z

    .line 168
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActionDividers:Z

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    .line 872
    new-instance v0, Landroidx/slice/widget/SliceView$1;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$1;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    .line 961
    new-instance v0, Landroidx/slice/widget/SliceView$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$2;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    .line 198
    sget v0, Landroidx/slice/view/R$style;->Widget_SliceView:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/slice/widget/SliceView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    .line 165
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    .line 166
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowTitleItems:Z

    .line 167
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowHeaderDivider:Z

    .line 168
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActionDividers:Z

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    .line 872
    new-instance v0, Landroidx/slice/widget/SliceView$1;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$1;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    .line 961
    new-instance v0, Landroidx/slice/widget/SliceView$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$2;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 205
    return-void
.end method

.method private applyConfigurations()V
    .locals 3

    .line 787
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 788
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceStyle;->getRowStyle(Landroidx/slice/SliceItem;)Landroidx/slice/widget/RowStyle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V

    .line 789
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 791
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getLayoutDir()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 792
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getLayoutDir()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setLayoutDirection(I)V

    goto :goto_0

    .line 794
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setLayoutDirection(I)V

    .line 796
    :goto_0
    return-void
.end method

.method private getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 846
    instance-of v0, p1, Landroidx/slice/widget/ShortcutView;

    if-eqz v0, :cond_0

    .line 847
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0

    .line 849
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getTintColor()I
    .locals 3

    .line 833
    iget v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 835
    return v0

    .line 837
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    const-string v1, "int"

    const-string v2, "color"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 839
    .local v0, "colorItem":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_1

    .line 840
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    goto :goto_0

    .line 841
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/slice/widget/SliceViewUtil;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    .line 839
    :goto_0
    return v1
.end method

.method private handleTouchForLongpress(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 324
    .local v0, "action":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 355
    return v1

    .line 335
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Landroidx/slice/widget/SliceView;->mDownX:I

    sub-int/2addr v2, v3

    .line 336
    .local v2, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Landroidx/slice/widget/SliceView;->mDownY:I

    sub-int/2addr v3, v4

    .line 337
    .local v3, "deltaY":I
    mul-int v4, v2, v2

    mul-int v5, v3, v3

    add-int/2addr v4, v5

    .line 338
    .local v4, "distance":I
    iget v5, p0, Landroidx/slice/widget/SliceView;->mTouchSlopSquared:I

    if-le v4, v5, :cond_0

    .line 339
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    .line 340
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 343
    :cond_0
    iget-boolean v1, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    return v1

    .line 347
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "distance":I
    :pswitch_1
    iget-boolean v2, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    .line 348
    .local v2, "wasInLongpress":Z
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    .line 349
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    .line 350
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 352
    return v2

    .line 326
    .end local v2    # "wasInLongpress":Z
    :pswitch_2
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/SliceView;->mDownX:I

    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/SliceView;->mDownY:I

    .line 329
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    .line 330
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    .line 331
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 332
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 209
    new-instance v0, Landroidx/slice/widget/SliceStyle;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceStyle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 210
    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getTintColor()I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    .line 211
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_shortcut_size:I

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    .line 213
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    .line 215
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_large_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceView;->mLargeHeight:I

    .line 216
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_action_row_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceView;->mActionRowHeight:I

    .line 218
    new-instance v0, Landroidx/slice/widget/SliceViewPolicy;

    invoke-direct {v0}, Landroidx/slice/widget/SliceViewPolicy;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 219
    new-instance v0, Landroidx/slice/widget/TemplateView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/widget/TemplateView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 220
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V

    .line 221
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/slice/widget/SliceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->applyConfigurations()V

    .line 225
    new-instance v0, Landroidx/slice/widget/ActionRow;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/slice/widget/ActionRow;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    .line 226
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x111112

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/slice/widget/ActionRow;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/slice/widget/SliceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 230
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 231
    .local v0, "slop":I
    mul-int v1, v0, v0

    iput v1, p0, Landroidx/slice/widget/SliceView;->mTouchSlopSquared:I

    .line 232
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    .line 234
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceView;->setClipToPadding(Z)V

    .line 235
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    return-void
.end method

.method private initSliceMetrics(Landroidx/slice/Slice;)V
    .locals 3
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 916
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 919
    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 920
    :cond_1
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 921
    nop

    .line 922
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/slice/widget/SliceMetrics;->getInstance(Landroid/content/Context;Landroid/net/Uri;)Landroidx/slice/widget/SliceMetrics;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    goto :goto_1

    .line 917
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 918
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    .line 924
    :cond_3
    :goto_1
    return-void
.end method

.method private logSliceMetricsOnTouch(Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;)V
    .locals 3
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "info"    # Landroidx/slice/widget/EventInfo;

    .line 940
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    iget v1, p2, Landroidx/slice/widget/EventInfo;->actionType:I

    .line 944
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 942
    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/SliceMetrics;->logTouch(ILandroid/net/Uri;)V

    .line 947
    :cond_0
    return-void
.end method

.method private logSliceMetricsVisibilityChange(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .line 927
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    if-eqz v0, :cond_1

    .line 928
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    if-nez v1, :cond_0

    .line 929
    invoke-virtual {v0}, Landroidx/slice/widget/SliceMetrics;->logVisible()V

    .line 930
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    .line 932
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceMetrics;->logHidden()V

    .line 934
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    .line 937
    :cond_1
    return-void
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 860
    packed-switch p0, :pswitch_data_0

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 862
    :pswitch_0
    const-string v0, "MODE SHORTCUT"

    return-object v0

    .line 866
    :pswitch_1
    const-string v0, "MODE LARGE"

    return-object v0

    .line 864
    :pswitch_2
    const-string v0, "MODE SMALL"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshLastUpdatedLabel(Z)V
    .locals 7
    .param p1, "visibility"    # Z

    .line 950
    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->neverExpires()Z

    move-result v0

    if-nez v0, :cond_2

    .line 951
    if-eqz p1, :cond_1

    .line 952
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v2}, Landroidx/slice/SliceMetadata;->isExpired()Z

    move-result v2

    const-wide/32 v3, 0xea60

    if-eqz v2, :cond_0

    .line 953
    goto :goto_0

    .line 954
    :cond_0
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v2}, Landroidx/slice/SliceMetadata;->getTimeToExpiry()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 952
    :goto_0
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 956
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 959
    :cond_2
    :goto_1
    return-void
.end method

.method private updateActions()V
    .locals 7

    .line 799
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 801
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v0, v2}, Landroidx/slice/widget/ActionRow;->setVisibility(I)V

    .line 802
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 803
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingEnd()I

    move-result v3

    .line 804
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v4

    .line 803
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 805
    return-void

    .line 808
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 809
    .local v0, "sortedActions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    sget-object v3, Landroidx/slice/widget/SliceView;->SLICE_ACTION_PRIORITY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 810
    iget-boolean v3, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 812
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroidx/slice/widget/ActionRow;->setActions(Ljava/util/List;I)V

    .line 813
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/slice/widget/ActionRow;->setVisibility(I)V

    .line 816
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v2, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 818
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingEnd()I

    move-result v5

    invoke-virtual {v1, v2, v4, v5, v3}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 819
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingEnd()I

    move-result v4

    .line 820
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v5

    .line 819
    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/slice/widget/ActionRow;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 824
    :cond_1
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v1, v0}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 825
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingStart()I

    move-result v3

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingEnd()I

    move-result v5

    .line 826
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v6

    .line 825
    invoke-virtual {v1, v3, v4, v5, v6}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 828
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v1, v2}, Landroidx/slice/widget/ActionRow;->setVisibility(I)V

    .line 830
    :goto_0
    return-void
.end method

.method private updateViewConfig()V
    .locals 6

    .line 756
    const/4 v0, 0x0

    .line 759
    .local v0, "newView":Z
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v1

    .line 760
    .local v1, "mode":I
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    instance-of v3, v2, Landroidx/slice/widget/ShortcutView;

    .line 761
    .local v3, "isCurrentViewShortcut":Z
    invoke-virtual {v2}, Landroidx/slice/widget/SliceChildView;->getLoadingActions()Ljava/util/Set;

    move-result-object v2

    .line 762
    .local v2, "loadingActions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceItem;>;"
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    if-nez v3, :cond_0

    .line 763
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0, v4}, Landroidx/slice/widget/SliceView;->removeView(Landroid/view/View;)V

    .line 764
    new-instance v4, Landroidx/slice/widget/ShortcutView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/slice/widget/ShortcutView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 765
    invoke-direct {p0, v4}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroidx/slice/widget/SliceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    const/4 v0, 0x1

    goto :goto_0

    .line 767
    :cond_0
    if-eq v1, v4, :cond_1

    if-eqz v3, :cond_1

    .line 768
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0, v4}, Landroidx/slice/widget/SliceView;->removeView(Landroid/view/View;)V

    .line 769
    new-instance v4, Landroidx/slice/widget/TemplateView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/slice/widget/TemplateView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 770
    invoke-direct {p0, v4}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroidx/slice/widget/SliceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    const/4 v0, 0x1

    .line 775
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 776
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v4, v5}, Landroidx/slice/widget/SliceChildView;->setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V

    .line 777
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->applyConfigurations()V

    .line 778
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 779
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v4, v5}, Landroidx/slice/widget/SliceChildView;->setSliceContent(Landroidx/slice/widget/ListContent;)V

    .line 781
    :cond_2
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v4, v2}, Landroidx/slice/widget/SliceChildView;->setLoadingActions(Ljava/util/Set;)V

    .line 783
    :cond_3
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 784
    return-void
.end method


# virtual methods
.method protected configureViewPolicy(I)V
    .locals 2
    .param p1, "maxHeight"    # I

    .line 363
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 364
    if-lez p1, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getRowMaxHeight()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 365
    iget v0, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    if-gt p1, v0, :cond_0

    .line 366
    iget p1, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    .line 368
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceViewPolicy;->setMaxSmallHeight(I)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceViewPolicy;->setMaxSmallHeight(I)V

    .line 372
    :goto_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceViewPolicy;->setMaxHeight(I)V

    .line 374
    :cond_2
    return-void
.end method

.method public getHiddenItemCount()I
    .locals 1

    .line 748
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceChildView;->getHiddenItemCount()I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 655
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v0

    return v0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 1

    .line 533
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    return-object v0
.end method

.method public getSliceActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    const/4 v0, 0x0

    return-object v0

    .line 548
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    return-object v0
.end method

.method public isScrollable()Z
    .locals 1

    .line 599
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceViewPolicy;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public isShowingActionRow()Z
    .locals 1

    .line 733
    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    return v0
.end method

.method public isSliceViewClickable()Z
    .locals 2

    .line 260
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 260
    :goto_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 885
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 886
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 888
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    .line 890
    :cond_0
    return-void
.end method

.method public onChanged(Landroidx/slice/Slice;)V
    .locals 0
    .param p1, "t"    # Landroidx/slice/Slice;

    .line 452
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setSlice(Landroidx/slice/Slice;)V

    .line 453
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->onChanged(Landroidx/slice/Slice;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 275
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 277
    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object v0

    check-cast v0, Landroidx/slice/core/SliceActionImpl;

    .line 278
    .local v0, "sa":Landroidx/slice/core/SliceActionImpl;
    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v1

    .line 279
    .local v1, "actionItem":Landroidx/slice/SliceItem;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 281
    .local v4, "loading":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 282
    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/slice/widget/SliceChildView;->setActionLoading(Landroidx/slice/SliceItem;)V

    .line 284
    :cond_1
    if-eqz v1, :cond_2

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    if-eqz v5, :cond_2

    array-length v5, v5

    if-le v5, v3, :cond_2

    .line 286
    new-instance v5, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v6

    const/4 v7, 0x3

    iget-object v8, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    aget v2, v8, v2

    aget v3, v8, v3

    invoke-direct {v5, v6, v7, v2, v3}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    move-object v2, v5

    .line 288
    .local v2, "eventInfo":Landroidx/slice/widget/EventInfo;
    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    .line 289
    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Landroidx/slice/widget/SliceView;->logSliceMetricsOnTouch(Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 291
    .end local v0    # "sa":Landroidx/slice/core/SliceActionImpl;
    .end local v1    # "actionItem":Landroidx/slice/SliceItem;
    .end local v2    # "eventInfo":Landroidx/slice/widget/EventInfo;
    .end local v4    # "loading":Z
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "SliceView"

    const-string v2, "PendingIntent for slice cannot be sent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_2
    :goto_1
    goto :goto_2

    .line 294
    :cond_3
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_4

    .line 295
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 297
    :cond_4
    :goto_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 894
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 895
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 896
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    .line 897
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 312
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->handleTouchForLongpress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 441
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 442
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 443
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v1}, Landroidx/slice/widget/ActionRow;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 444
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 445
    .local v1, "top":I
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v2}, Landroidx/slice/widget/ActionRow;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    .line 446
    invoke-virtual {v5}, Landroidx/slice/widget/ActionRow;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    .line 445
    invoke-virtual {v2, v3, v1, v4, v5}, Landroidx/slice/widget/ActionRow;->layout(IIII)V

    .line 448
    .end local v1    # "top":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 378
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 379
    .local v0, "width":I
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v2, v1, :cond_0

    .line 381
    iget v1, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingRight()I

    move-result v3

    add-int v0, v1, v3

    .line 383
    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v1}, Landroidx/slice/widget/ActionRow;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    .line 384
    iget v1, p0, Landroidx/slice/widget/SliceView;->mActionRowHeight:I

    goto :goto_0

    .line 385
    :cond_1
    move v1, v4

    :goto_0
    nop

    .line 386
    .local v1, "actionHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 387
    .local v3, "heightAvailable":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 388
    .local v5, "heightMode":I
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 390
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v6, :cond_2

    iget v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v8, -0x2

    if-eq v7, v8, :cond_3

    :cond_2
    if-nez v5, :cond_4

    .line 391
    :cond_3
    const/4 v7, -0x1

    goto :goto_1

    .line 392
    :cond_4
    move v7, v3

    :goto_1
    nop

    .line 393
    .local v7, "maxHeight":I
    invoke-virtual {p0, v7}, Landroidx/slice/widget/SliceView;->configureViewPolicy(I)V

    .line 395
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 398
    .local v8, "childrenHeight":I
    const/high16 v9, 0x40000000    # 2.0f

    if-eq v5, v9, :cond_c

    .line 399
    iget-object v10, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_3

    .line 401
    :cond_5
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v10

    if-ne v10, v2, :cond_6

    .line 403
    iget v2, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    add-int v8, v2, v1

    goto :goto_4

    .line 405
    :cond_6
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object v10, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v11, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 406
    invoke-virtual {v2, v10, v11}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v2

    add-int/2addr v2, v1

    .line 407
    .local v2, "requiredHeight":I
    if-gt v8, v2, :cond_a

    if-nez v5, :cond_7

    goto :goto_2

    .line 412
    :cond_7
    iget-object v10, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v10}, Landroidx/slice/widget/SliceStyle;->getExpandToAvailableHeight()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 414
    move v2, v8

    goto :goto_4

    .line 415
    :cond_8
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    iget v10, p0, Landroidx/slice/widget/SliceView;->mLargeHeight:I

    add-int v11, v10, v1

    if-lt v8, v11, :cond_9

    .line 417
    add-int v8, v10, v1

    goto :goto_4

    .line 418
    :cond_9
    iget v10, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    if-gt v8, v10, :cond_c

    .line 419
    iget v8, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    goto :goto_4

    .line 409
    :cond_a
    :goto_2
    move v8, v2

    goto :goto_4

    .line 400
    .end local v2    # "requiredHeight":I
    :cond_b
    :goto_3
    move v8, v1

    .line 427
    :cond_c
    :goto_4
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 428
    .local v2, "childWidthSpec":I
    if-lez v1, :cond_d

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v10, v1

    goto :goto_5

    :cond_d
    move v10, v4

    .line 429
    .local v10, "actionRowHeight":I
    :goto_5
    iget-object v11, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v11, v2, v12}, Landroidx/slice/widget/ActionRow;->measure(II)V

    .line 432
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v11

    add-int/2addr v11, v8

    .line 433
    if-lez v1, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v4

    :goto_6
    add-int/2addr v11, v4

    .line 434
    .local v11, "currentViewHeight":I
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-static {v11, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v4, v2, v9}, Landroidx/slice/widget/SliceChildView;->measure(II)V

    .line 435
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 436
    invoke-virtual {v4}, Landroidx/slice/widget/SliceChildView;->getMeasuredHeight()I

    move-result v4

    iget-object v9, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v9}, Landroidx/slice/widget/ActionRow;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v4, v9

    .line 435
    invoke-virtual {p0, v0, v4}, Landroidx/slice/widget/SliceView;->setMeasuredDimension(II)V

    .line 437
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 318
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->handleTouchForLongpress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 901
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 902
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 903
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {p0, v2}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 904
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    .line 906
    :cond_2
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 910
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 911
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {p0, v2}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 912
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    .line 913
    return-void
.end method

.method public setAccentColor(I)V
    .locals 2
    .param p1, "accentColor"    # I

    .line 619
    iput p1, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    .line 620
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceStyle;->setTintColor(I)V

    .line 621
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 622
    return-void
.end method

.method public setClickInfo([I)V
    .locals 0
    .param p1, "info"    # [I

    .line 270
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    .line 271
    return-void
.end method

.method public setCurrentView(Landroidx/slice/widget/SliceChildView;)V
    .locals 2
    .param p1, "currentView"    # Landroidx/slice/widget/SliceChildView;

    .line 242
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceView;->removeView(Landroid/view/View;)V

    .line 243
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 244
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {p1, v0}, Landroidx/slice/widget/SliceChildView;->setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V

    .line 245
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/slice/widget/SliceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->applyConfigurations()V

    .line 247
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 583
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/widget/SliceView;->setMode(IZ)V

    .line 584
    return-void
.end method

.method public setMode(IZ)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "animate"    # Z

    .line 636
    const-string v0, "SliceView"

    if-eqz p2, :cond_0

    .line 637
    const-string v1, "Animation not supported yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v1}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 640
    return-void

    .line 642
    :cond_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " please use one of MODE_SHORTCUT, MODE_SMALL, MODE_LARGE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 p1, 0x2

    .line 647
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceViewPolicy;->setMode(I)V

    .line 648
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateViewConfig()V

    .line 649
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 301
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 302
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .line 306
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 307
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 308
    return-void
.end method

.method public setOnSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 1
    .param p1, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 607
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 608
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 609
    return-void
.end method

.method public setRowStyleFactory(Landroidx/slice/widget/RowStyleFactory;)V
    .locals 1
    .param p1, "rowStyleFactory"    # Landroidx/slice/widget/RowStyleFactory;

    .line 628
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceStyle;->setRowStyleFactory(Landroidx/slice/widget/RowStyleFactory;)V

    .line 629
    return-void
.end method

.method public setScrollable(Z)V
    .locals 1
    .param p1, "isScrollable"    # Z

    .line 590
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceViewPolicy;->isScrollable()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 591
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceViewPolicy;->setScrollable(Z)V

    .line 593
    :cond_0
    return-void
.end method

.method public setShowActionDividers(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 701
    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mShowActionDividers:Z

    .line 702
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0, p1}, Landroidx/slice/widget/ListContent;->showActionDividers(Z)V

    .line 705
    :cond_0
    return-void
.end method

.method public setShowActionRow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 723
    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    .line 724
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 725
    return-void
.end method

.method public setShowHeaderDivider(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 682
    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mShowHeaderDivider:Z

    .line 683
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v0, p1}, Landroidx/slice/widget/ListContent;->showHeaderDivider(Z)V

    .line 686
    :cond_0
    return-void
.end method

.method public setShowTitleItems(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 663
    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mShowTitleItems:Z

    .line 664
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {v0, p1}, Landroidx/slice/widget/ListContent;->showTitleItems(Z)V

    .line 667
    :cond_0
    return-void
.end method

.method public setSlice(Landroidx/slice/Slice;)V
    .locals 8
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 462
    invoke-static {p0}, Landroidx/slice/widget/LocationBasedViewTracker;->trackInputFocused(Landroid/view/ViewGroup;)V

    .line 463
    invoke-static {p0}, Landroidx/slice/widget/LocationBasedViewTracker;->trackA11yFocus(Landroid/view/ViewGroup;)V

    .line 464
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->initSliceMetrics(Landroidx/slice/Slice;)V

    .line 465
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    if-eqz v2, :cond_0

    .line 466
    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    invoke-virtual {v3}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 467
    .local v2, "isUpdate":Z
    :goto_0
    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    .line 468
    .local v3, "oldSliceData":Landroidx/slice/SliceMetadata;
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    .line 469
    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    invoke-static {v5, v6}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v5

    goto :goto_1

    .line 470
    :cond_1
    move-object v5, v4

    :goto_1
    iput-object v5, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    .line 471
    const/4 v5, 0x2

    if-eqz v2, :cond_3

    .line 473
    iget-object v6, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    .line 474
    .local v6, "newSliceData":Landroidx/slice/SliceMetadata;
    invoke-virtual {v3}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result v7

    if-ne v7, v5, :cond_2

    .line 475
    invoke-virtual {v6}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result v7

    if-nez v7, :cond_2

    .line 478
    return-void

    .line 480
    .end local v6    # "newSliceData":Landroidx/slice/SliceMetadata;
    :cond_2
    goto :goto_2

    .line 481
    :cond_3
    iget-object v6, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v6}, Landroidx/slice/widget/SliceChildView;->resetView()V

    .line 483
    :goto_2
    iget-object v6, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroidx/slice/SliceMetadata;->getListContent()Landroidx/slice/widget/ListContent;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v4

    :goto_3
    iput-object v6, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 484
    iget-boolean v6, p0, Landroidx/slice/widget/SliceView;->mShowTitleItems:Z

    if-eqz v6, :cond_5

    .line 485
    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceView;->showTitleItems(Z)V

    .line 487
    :cond_5
    iget-boolean v6, p0, Landroidx/slice/widget/SliceView;->mShowHeaderDivider:Z

    if-eqz v6, :cond_6

    .line 488
    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceView;->showHeaderDivider(Z)V

    .line 490
    :cond_6
    iget-boolean v6, p0, Landroidx/slice/widget/SliceView;->mShowActionDividers:Z

    if-eqz v6, :cond_7

    .line 491
    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceView;->showActionDividers(Z)V

    .line 493
    :cond_7
    iget-object v6, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_5

    .line 500
    :cond_8
    iget-object v6, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v6, v4}, Landroidx/slice/widget/SliceChildView;->setLoadingActions(Ljava/util/Set;)V

    .line 503
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v4}, Landroidx/slice/SliceMetadata;->getSliceActions()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    .line 504
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v6, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v6}, Landroidx/slice/SliceMetadata;->getLastUpdatedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    .line 505
    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-boolean v6, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v6}, Landroidx/slice/SliceMetadata;->isExpired()Z

    move-result v6

    if-eqz v6, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {v4, v0}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 506
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v4}, Landroidx/slice/SliceMetadata;->isPermissionSlice()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/slice/widget/SliceChildView;->setAllowTwoLines(Z)V

    .line 509
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 511
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getLayoutDir()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_a

    .line 512
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v4}, Landroidx/slice/widget/ListContent;->getLayoutDir()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/slice/widget/SliceChildView;->setLayoutDirection(I)V

    goto :goto_4

    .line 514
    :cond_a
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v5}, Landroidx/slice/widget/SliceChildView;->setLayoutDirection(I)V

    .line 518
    :goto_4
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0, v4}, Landroidx/slice/widget/SliceChildView;->setSliceContent(Landroidx/slice/widget/ListContent;)V

    .line 519
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 522
    invoke-direct {p0, v1}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 525
    invoke-direct {p0, v1}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    .line 526
    return-void

    .line 494
    :cond_b
    :goto_5
    iput-object v4, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    .line 495
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceChildView;->resetView()V

    .line 496
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 497
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    .line 563
    .local p1, "newActions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    if-eqz v0, :cond_3

    .line 566
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getSliceActions()Ljava/util/List;

    move-result-object v0

    .line 567
    .local v0, "availableActions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 568
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 569
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 570
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to set an action that isn\'t available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 571
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 575
    .end local v1    # "i":I
    :cond_1
    if-nez p1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    iput-object v1, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    .line 576
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 577
    return-void

    .line 564
    .end local v0    # "availableActions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to set actions on a view without a slice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setSliceViewPolicy(Landroidx/slice/widget/SliceViewPolicy;)V
    .locals 0
    .param p1, "policy"    # Landroidx/slice/widget/SliceViewPolicy;

    .line 251
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 252
    return-void
.end method

.method public showActionDividers(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 713
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setShowActionDividers(Z)V

    .line 714
    return-void
.end method

.method public showHeaderDivider(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 694
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setShowHeaderDivider(Z)V

    .line 695
    return-void
.end method

.method public showTitleItems(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 675
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setShowTitleItems(Z)V

    .line 676
    return-void
.end method
