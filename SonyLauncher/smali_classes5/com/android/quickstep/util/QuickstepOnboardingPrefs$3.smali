.class Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;
.super Ljava/lang/Object;
.source "QuickstepOnboardingPrefs.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/QuickstepOnboardingPrefs;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_NUM_SWIPES_TO_TRIGGER_EDU:I = 0x3


# instance fields
.field private mCount:I

.field private mShouldIncreaseCount:Z

.field final synthetic this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

.field final synthetic val$launcher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    .line 93
    iput-object p1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    iput-object p2, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->val$launcher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mCount:I

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .locals 4
    .param p1, "finalState"    # Lcom/android/launcher3/LauncherState;

    .line 111
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/16 v1, 0x200

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 112
    iget v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mCount:I

    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    invoke-static {v0}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->access$400(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->val$launcher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v0}, Lcom/android/quickstep/views/AllAppsEduView;->show(Lcom/android/launcher3/Launcher;)V

    .line 116
    :cond_0
    iput v2, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mCount:I

    .line 118
    :cond_1
    return-void

    .line 121
    :cond_2
    iget-boolean v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mShouldIncreaseCount:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_3

    .line 122
    iget v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mCount:I

    goto :goto_0

    .line 124
    :cond_3
    iput v2, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mCount:I

    .line 127
    :goto_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    invoke-static {v0}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->access$500(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/AllAppsEduView;

    .line 129
    .local v0, "view":Lcom/android/quickstep/views/AllAppsEduView;
    if-eqz v0, :cond_4

    .line 130
    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/AllAppsEduView;->close(Z)V

    .line 133
    .end local v0    # "view":Lcom/android/quickstep/views/AllAppsEduView;
    :cond_4
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .locals 1
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 102
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->val$launcher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    .line 106
    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mShouldIncreaseCount:Z

    .line 107
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
