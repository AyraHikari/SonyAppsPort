.class public Lcom/android/launcher3/views/ScrimView;
.super Landroid/view/View;
.source "ScrimView.java"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;
    }
.end annotation


# static fields
.field private static final STATUS_BAR_COLOR_FORCE_UPDATE_THRESHOLD:F = 0.9f


# instance fields
.field private mBackgroundColor:I

.field private mDrawingController:Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;

.field private mIsVisible:Z

.field private mLastDispatchedOpaqueness:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mOpaquenessListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemUiController:Lcom/android/launcher3/util/SystemUiController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mOpaquenessListeners:Ljava/util/ArrayList;

    .line 54
    iput-boolean v1, p0, Lcom/android/launcher3/views/ScrimView;->mIsVisible:Z

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/ScrimView;->setFocusable(Z)V

    .line 60
    return-void
.end method

.method private dispatchVisibilityListenersIfNeeded()V
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->isFullyOpaque()Z

    move-result v0

    .line 159
    .local v0, "fullyOpaque":Z
    iget-boolean v1, p0, Lcom/android/launcher3/views/ScrimView;->mLastDispatchedOpaqueness:Z

    if-ne v1, v0, :cond_0

    .line 160
    return-void

    .line 162
    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher3/views/ScrimView;->mLastDispatchedOpaqueness:Z

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/views/ScrimView;->mOpaquenessListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/android/launcher3/views/ScrimView;->mOpaquenessListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private getSystemUiController()Lcom/android/launcher3/util/SystemUiController;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    return-object v0
.end method

.method private isScrimDark()Z
    .locals 4

    .line 176
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1

    .line 181
    nop

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 181
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScrimView must have a ColorDrawable background, this one has: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateSysUiColors()V
    .locals 7

    .line 112
    const v0, 0x3f666666    # 0.9f

    .line 113
    .local v0, "threshold":F
    const/4 v1, 0x0

    .line 114
    .local v1, "isRearrange":Z
    iget-object v2, p0, Lcom/android/launcher3/views/ScrimView;->mLauncher:Lcom/android/launcher3/Launcher;

    instance-of v3, v2, Lcom/android/launcher3/Launcher;

    if-eqz v3, :cond_0

    .line 115
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isRearrange()Z

    move-result v1

    .line 118
    :cond_0
    const/4 v2, 0x1

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x0

    const v5, 0x3f666666    # 0.9f

    if-nez v1, :cond_2

    .line 121
    nop

    .line 122
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    iget v6, p0, Lcom/android/launcher3/views/ScrimView;->mBackgroundColor:I

    .line 124
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    cmpl-float v3, v6, v5

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    .local v2, "forceChange":Z
    :goto_0
    goto :goto_1

    .line 128
    .end local v2    # "forceChange":Z
    :cond_2
    nop

    .line 129
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getAlpha()F

    move-result v6

    cmpl-float v5, v6, v5

    if-lez v5, :cond_3

    iget v5, p0, Lcom/android/launcher3/views/ScrimView;->mBackgroundColor:I

    .line 131
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v5, v3

    if-ltz v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    .line 133
    .restart local v2    # "forceChange":Z
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/views/ScrimView;->setStatusBarColor(ZZ)V

    .line 134
    return-void
.end method


# virtual methods
.method public addOpaquenessListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mOpaquenessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public isFullyOpaque()Z
    .locals 2

    .line 94
    iget-boolean v0, p0, Lcom/android/launcher3/views/ScrimView;->mIsVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/views/ScrimView;->mBackgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 99
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mDrawingController:Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, p1}, Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;->drawOnScrim(Landroid/graphics/Canvas;)V

    .line 103
    :cond_0
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .param p1, "alpha"    # I

    .line 73
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->updateSysUiColors()V

    .line 74
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->dispatchVisibilityListenersIfNeeded()V

    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    return v0
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .line 88
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 89
    iput-boolean p1, p0, Lcom/android/launcher3/views/ScrimView;->mIsVisible:Z

    .line 90
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->dispatchVisibilityListenersIfNeeded()V

    .line 91
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 107
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 108
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->updateSysUiColors()V

    .line 109
    return-void
.end method

.method public removeOpaquenessListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mOpaquenessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 80
    iput p1, p0, Lcom/android/launcher3/views/ScrimView;->mBackgroundColor:I

    .line 81
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->updateSysUiColors()V

    .line 82
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->dispatchVisibilityListenersIfNeeded()V

    .line 83
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 84
    return-void
.end method

.method public setDrawingController(Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;)V
    .locals 1
    .param p1, "drawingController"    # Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mDrawingController:Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;

    if-eq v0, p1, :cond_0

    .line 190
    iput-object p1, p0, Lcom/android/launcher3/views/ScrimView;->mDrawingController:Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;

    .line 191
    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->invalidate()V

    .line 193
    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 64
    return-void
.end method

.method public setLauncher(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 196
    iput-object p1, p0, Lcom/android/launcher3/views/ScrimView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 197
    return-void
.end method

.method protected setStatusBarColor(ZZ)V
    .locals 3
    .param p1, "isRearrange"    # Z
    .param p2, "forceChange"    # Z

    .line 137
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->isScrimDark()Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    .line 139
    if-eqz p1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 141
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 142
    .local v0, "currentSystemUiVisibility":I
    iget-object v1, p0, Lcom/android/launcher3/views/ScrimView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    and-int/lit16 v2, v0, -0x2001

    .line 143
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/android/launcher3/views/ScrimView;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x1010435

    invoke-static {v1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 146
    .local v1, "accentColor":I
    iget-object v2, p0, Lcom/android/launcher3/views/ScrimView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 147
    .end local v0    # "currentSystemUiVisibility":I
    .end local v1    # "accentColor":I
    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 150
    if-eqz p1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x1010451

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 152
    .local v0, "statusBarColor":I
    iget-object v1, p0, Lcom/android/launcher3/views/ScrimView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 155
    .end local v0    # "statusBarColor":I
    :cond_1
    :goto_0
    return-void
.end method
