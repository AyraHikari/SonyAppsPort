.class public Lcom/android/launcher3/allapps/WorkPausedCard;
.super Landroid/widget/LinearLayout;
.source "WorkPausedCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field private mBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/allapps/WorkPausedCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/WorkPausedCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkPausedCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkPausedCard;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 50
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 62
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkPausedCard;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkPausedCard;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getWorkManager()Lcom/android/launcher3/allapps/WorkProfileManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/WorkProfileManager;->setWorkProfileEnabled(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkPausedCard;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TURN_ON_WORK_APPS_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 67
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 55
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 56
    sget v0, Lcom/android/launcher3/R$id;->enable_work_apps:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkPausedCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkPausedCard;->mBtn:Landroid/widget/Button;

    .line 57
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 71
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkPausedCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 72
    .local v0, "orientation":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkPausedCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 73
    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    :goto_0
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 75
    return-void
.end method
