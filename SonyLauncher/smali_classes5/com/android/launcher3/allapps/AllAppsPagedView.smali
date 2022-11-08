.class public Lcom/android/launcher3/allapps/AllAppsPagedView;
.super Lcom/android/launcher3/workprofile/PersonalWorkPagedView;
.source "AllAppsPagedView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/AllAppsPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected snapToPageWithVelocity(II)Z
    .locals 3
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .line 48
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->snapToPageWithVelocity(II)Z

    move-result v0

    .line 49
    .local v0, "resp":Z
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsPagedView;->mCurrentPage:I

    if-eq p1, v1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 51
    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsPagedView;->mCurrentPage:I

    if-ge v2, p1, :cond_0

    .line 52
    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_SWIPE_TO_WORK_TAB:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    .line 53
    :cond_0
    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_SWIPE_TO_PERSONAL_TAB:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 51
    :goto_0
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 55
    :cond_1
    return v0
.end method
