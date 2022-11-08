.class public Lcom/android/launcher3/appprediction/AppsDividerView;
.super Landroid/view/View;
.source "AppsDividerView.java"

# interfaces
.implements Lcom/android/launcher3/allapps/FloatingHeaderRow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;
    }
.end annotation


# instance fields
.field private mAllAppsLabelLayout:Landroid/text/Layout;

.field private final mAllAppsLabelTextColor:I

.field private final mDividerSize:[I

.field private mDividerType:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

.field private mIsScrolledOut:Z

.field private final mPaint:Landroid/text/TextPaint;

.field private mParent:Lcom/android/launcher3/allapps/FloatingHeaderView;

.field private mRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

.field private mShowAllAppsLabel:Z

.field private final mStrokeColor:I

.field private mTabsHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/appprediction/AppsDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/appprediction/AppsDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    .line 55
    sget-object v0, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->NONE:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    iput-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerType:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    .line 65
    sget-object v0, Lcom/android/launcher3/allapps/FloatingHeaderRow;->NO_ROWS:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    iput-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mIsScrolledOut:Z

    .line 82
    sget v1, Lcom/android/launcher3/R$attr;->isMainColorDark:I

    invoke-static {p1, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v1

    .line 83
    .local v1, "isMainColorDark":Z
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$dimen;->all_apps_divider_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    aput v3, v2, v0

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$dimen;->all_apps_divider_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    iput-object v2, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerSize:[I

    .line 88
    if-eqz v1, :cond_0

    .line 89
    sget v2, Lcom/android/launcher3/R$color;->all_apps_prediction_row_separator_dark:I

    goto :goto_0

    .line 90
    :cond_0
    sget v2, Lcom/android/launcher3/R$color;->all_apps_prediction_row_separator:I

    .line 88
    :goto_0
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mStrokeColor:I

    .line 92
    if-eqz v1, :cond_1

    .line 93
    sget v2, Lcom/android/launcher3/R$color;->all_apps_label_text_dark:I

    goto :goto_1

    .line 94
    :cond_1
    sget v2, Lcom/android/launcher3/R$color;->all_apps_label_text:I

    .line 92
    :goto_1
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mAllAppsLabelTextColor:I

    .line 96
    nop

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 96
    invoke-static {v2}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    .line 97
    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object v2

    .line 98
    .local v2, "onboardingPrefs":Lcom/android/launcher3/util/OnboardingPrefs;, "Lcom/android/launcher3/util/OnboardingPrefs<*>;"
    if-eqz v2, :cond_2

    const-string v3, "launcher.all_apps_visited_count"

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/OnboardingPrefs;->hasReachedMaxCount(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v0, v4

    :cond_3
    iput-boolean v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mShowAllAppsLabel:Z

    .line 100
    return-void
.end method

.method private getAllAppsLabelLayout()Landroid/text/Layout;
    .locals 6

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mAllAppsLabelLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    const-string v2, "google-sans"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/launcher3/R$dimen;->all_apps_label_text_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 217
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/launcher3/R$string;->all_apps_label:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 221
    .local v0, "allAppsLabelText":Ljava/lang/CharSequence;
    nop

    .line 222
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    .line 223
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 221
    invoke-static {v0, v3, v2, v4, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 224
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 225
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 226
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mAllAppsLabelLayout:Landroid/text/Layout;

    .line 229
    .end local v0    # "allAppsLabelText":Ljava/lang/CharSequence;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mAllAppsLabelLayout:Landroid/text/Layout;

    return-object v0
.end method

.method private updateDividerType()V
    .locals 7

    .line 134
    iget-boolean v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mTabsHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->NONE:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    .local v0, "dividerType":Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;
    goto :goto_2

    .line 138
    .end local v0    # "dividerType":Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;
    :cond_0
    const/4 v0, 0x0

    .line 139
    .local v0, "sectionCount":I
    iget-object v2, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 140
    .local v5, "row":Lcom/android/launcher3/allapps/FloatingHeaderRow;
    if-ne v5, p0, :cond_1

    .line 141
    goto :goto_1

    .line 142
    :cond_1
    invoke-interface {v5}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->shouldDraw()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 143
    add-int/lit8 v0, v0, 0x1

    .line 139
    .end local v5    # "row":Lcom/android/launcher3/allapps/FloatingHeaderRow;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 147
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mShowAllAppsLabel:Z

    if-eqz v2, :cond_4

    if-lez v0, :cond_4

    .line 148
    sget-object v2, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->ALL_APPS_LABEL:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    move-object v0, v2

    .local v2, "dividerType":Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;
    goto :goto_2

    .line 149
    .end local v2    # "dividerType":Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;
    :cond_4
    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 150
    sget-object v2, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->LINE:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    move-object v0, v2

    .restart local v2    # "dividerType":Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;
    goto :goto_2

    .line 152
    .end local v2    # "dividerType":Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;
    :cond_5
    sget-object v2, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->NONE:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    move-object v0, v2

    .line 156
    .local v0, "dividerType":Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerType:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    if-eq v2, v0, :cond_6

    .line 157
    iput-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerType:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    .line 160
    sget-object v2, Lcom/android/launcher3/appprediction/AppsDividerView$1;->$SwitchMap$com$android$launcher3$appprediction$AppsDividerView$DividerType:[I

    invoke-virtual {v0}, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 176
    move v2, v1

    .local v1, "topPadding":I
    .local v2, "bottomPadding":I
    goto :goto_3

    .line 168
    .end local v1    # "topPadding":I
    .end local v2    # "bottomPadding":I
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getAllAppsLabelLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$dimen;->all_apps_label_top_padding:I

    .line 169
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 170
    .restart local v1    # "topPadding":I
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$dimen;->all_apps_label_bottom_padding:I

    .line 171
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 172
    .restart local v2    # "bottomPadding":I
    iget-object v3, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mAllAppsLabelTextColor:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 173
    goto :goto_3

    .line 162
    .end local v1    # "topPadding":I
    .end local v2    # "bottomPadding":I
    :pswitch_1
    const/4 v1, 0x0

    .line 163
    .restart local v1    # "topPadding":I
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$dimen;->all_apps_prediction_row_divider_height:I

    .line 164
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 165
    .restart local v2    # "bottomPadding":I
    iget-object v3, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mStrokeColor:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 166
    nop

    .line 179
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0, v3, v1, v4, v2}, Lcom/android/launcher3/appprediction/AppsDividerView;->setPadding(IIII)V

    .line 180
    invoke-direct {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->updateViewVisibility()V

    .line 181
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->invalidate()V

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->requestLayout()V

    .line 183
    iget-object v3, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mParent:Lcom/android/launcher3/allapps/FloatingHeaderView;

    if-eqz v3, :cond_6

    .line 184
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/FloatingHeaderView;->onHeightUpdated()V

    .line 187
    .end local v1    # "topPadding":I
    .end local v2    # "bottomPadding":I
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateViewVisibility()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerType:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    sget-object v1, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->NONE:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    if-ne v0, v1, :cond_0

    .line 191
    const/16 v0, 0x8

    goto :goto_0

    .line 192
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mIsScrolledOut:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 190
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/appprediction/AppsDividerView;->setVisibility(I)V

    .line 193
    return-void
.end method


# virtual methods
.method public getExpectedHeight()I
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/android/launcher3/appprediction/AppsDividerView;",
            ">;"
        }
    .end annotation

    .line 251
    const-class v0, Lcom/android/launcher3/appprediction/AppsDividerView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public hasVisibleContent()Z
    .locals 1

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerType:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    sget-object v1, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->LINE:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    if-ne v0, v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerSize:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 199
    .local v0, "l":I
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getPaddingBottom()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 200
    .local v1, "t":I
    iget-object v3, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerSize:[I

    const/4 v4, 0x1

    aget v5, v3, v4

    .line 201
    .local v5, "radius":I
    int-to-float v7, v0

    int-to-float v8, v1

    aget v2, v3, v2

    add-int/2addr v2, v0

    int-to-float v9, v2

    aget v2, v3, v4

    add-int/2addr v2, v1

    int-to-float v10, v2

    int-to-float v11, v5

    int-to-float v12, v5

    iget-object v13, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .end local v0    # "l":I
    .end local v1    # "t":I
    .end local v5    # "radius":I
    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerType:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    sget-object v1, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->ALL_APPS_LABEL:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    if-ne v0, v1, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getAllAppsLabelLayout()Landroid/text/Layout;

    move-result-object v0

    .line 205
    .local v0, "textLayout":Landroid/text/Layout;
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 206
    .local v1, "x":I
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 207
    .local v2, "y":I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 208
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 209
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 203
    .end local v0    # "textLayout":Landroid/text/Layout;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_1
    :goto_0
    nop

    .line 211
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 238
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/launcher3/appprediction/AppsDividerView;->getDefaultSize(II)I

    move-result v0

    .line 239
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 238
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/appprediction/AppsDividerView;->setMeasuredDimension(II)V

    .line 240
    return-void
.end method

.method public setShowAllAppsLabel(Z)V
    .locals 1
    .param p1, "showAllAppsLabel"    # Z

    .line 111
    iget-boolean v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mShowAllAppsLabel:Z

    if-eq p1, v0, :cond_0

    .line 112
    iput-boolean p1, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mShowAllAppsLabel:Z

    .line 113
    invoke-direct {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->updateDividerType()V

    .line 115
    :cond_0
    return-void
.end method

.method public setVerticalScroll(IZ)V
    .locals 1
    .param p1, "scroll"    # I
    .param p2, "isScrolledOut"    # Z

    .line 244
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/appprediction/AppsDividerView;->setTranslationY(F)V

    .line 245
    iput-boolean p2, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mIsScrolledOut:Z

    .line 246
    invoke-direct {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->updateViewVisibility()V

    .line 247
    return-void
.end method

.method public setup(Lcom/android/launcher3/allapps/FloatingHeaderView;[Lcom/android/launcher3/allapps/FloatingHeaderRow;Z)V
    .locals 0
    .param p1, "parent"    # Lcom/android/launcher3/allapps/FloatingHeaderView;
    .param p2, "rows"    # [Lcom/android/launcher3/allapps/FloatingHeaderRow;
    .param p3, "tabsHidden"    # Z

    .line 103
    iput-object p1, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mParent:Lcom/android/launcher3/allapps/FloatingHeaderView;

    .line 104
    iput-boolean p3, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mTabsHidden:Z

    .line 105
    iput-object p2, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    .line 106
    invoke-direct {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->updateDividerType()V

    .line 107
    return-void
.end method

.method public shouldDraw()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerType:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    sget-object v1, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->NONE:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
