.class Lcom/android/launcher3/LauncherState$5;
.super Lcom/android/launcher3/LauncherState$PageTranslationProvider;
.source "LauncherState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherState;->getWorkspacePageTranslationProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageTranslationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherState;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;

.field final synthetic val$quarterPageSpacing:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherState;Landroid/view/animation/Interpolator;Lcom/android/launcher3/Launcher;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherState;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 311
    iput-object p1, p0, Lcom/android/launcher3/LauncherState$5;->this$0:Lcom/android/launcher3/LauncherState;

    iput-object p3, p0, Lcom/android/launcher3/LauncherState$5;->val$launcher:Lcom/android/launcher3/Launcher;

    iput p4, p0, Lcom/android/launcher3/LauncherState$5;->val$quarterPageSpacing:F

    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherState$PageTranslationProvider;-><init>(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public getPageTranslation(I)F
    .locals 3
    .param p1, "pageIndex"    # I

    .line 314
    iget-object v0, p0, Lcom/android/launcher3/LauncherState$5;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    .line 315
    .local v0, "isRtl":Z
    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 316
    .local v1, "isFirstPage":Z
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    :cond_2
    iget v2, p0, Lcom/android/launcher3/LauncherState$5;->val$quarterPageSpacing:F

    neg-float v2, v2

    goto :goto_1

    .line 317
    :cond_3
    iget v2, p0, Lcom/android/launcher3/LauncherState$5;->val$quarterPageSpacing:F

    .line 316
    :goto_1
    return v2
.end method
