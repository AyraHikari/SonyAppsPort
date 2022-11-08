.class public Lcom/android/launcher3/popup/RemoteActionShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "RemoteActionShortcut.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "RemoteActionShortcut"


# instance fields
.field private final mAction:Landroid/app/RemoteAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    sput-boolean v0, Lcom/android/launcher3/popup/RemoteActionShortcut;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/RemoteAction;Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .locals 6
    .param p1, "action"    # Landroid/app/RemoteAction;
    .param p2, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p3, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p4, "originalView"    # Landroid/view/View;

    .line 50
    sget v2, Lcom/android/launcher3/R$id;->action_remote_action_shortcut:I

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    .line 51
    iput-object p1, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mAction:Landroid/app/RemoteAction;

    .line 52
    return-void
.end method


# virtual methods
.method public createAccessibilityAction(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lcom/android/launcher3/R$id;->action_remote_action_shortcut:I

    iget-object v2, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mAction:Landroid/app/RemoteAction;

    .line 73
    invoke-virtual {v2}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 72
    return-object v0
.end method

.method public isLeftGroup()Z
    .locals 1

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onClick$0$com-android-launcher3-popup-RemoteActionShortcut(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "actionIdentity"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Ljava/lang/String;
    .param p6, "resultExtras"    # Landroid/os/Bundle;

    .line 93
    sget-boolean v0, Lcom/android/launcher3/popup/RemoteActionShortcut;->DEBUG:Z

    const-string v1, "RemoteActionShortcut"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action is complete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote action returned result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mTarget:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 78
    const-string v0, "RemoteActionShortcut"

    iget-object v1, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mTarget:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 79
    iget-object v1, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mTarget:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseDraggingActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_PAUSE_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 80
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mAction:Landroid/app/RemoteAction;

    invoke-virtual {v2}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 83
    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "actionIdentity":Ljava/lang/String;
    :try_start_0
    sget-boolean v2, Lcom/android/launcher3/popup/RemoteActionShortcut;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mAction:Landroid/app/RemoteAction;

    invoke-virtual {v2}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mTarget:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v6, "android.intent.extra.PACKAGE_NAME"

    iget-object v7, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 91
    invoke-virtual {v7}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 89
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/popup/RemoteActionShortcut$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, v1}, Lcom/android/launcher3/popup/RemoteActionShortcut$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/popup/RemoteActionShortcut;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 100
    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 86
    invoke-virtual/range {v3 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote action canceled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mTarget:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mTarget:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/BaseDraggingActivity;

    sget v4, Lcom/android/launcher3/R$string;->remote_action_failed:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mAction:Landroid/app/RemoteAction;

    .line 105
    invoke-virtual {v6}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 103
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/BaseDraggingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    .end local v2    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method

.method public setIconAndContentDescriptionFor(Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mAction:Landroid/app/RemoteAction;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/popup/RemoteActionShortcut$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/launcher3/popup/RemoteActionShortcut$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImageView;)V

    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 66
    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 64
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mAction:Landroid/app/RemoteAction;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 4
    .param p1, "iconView"    # Landroid/view/View;
    .param p2, "labelView"    # Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mAction:Landroid/app/RemoteAction;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/popup/RemoteActionShortcut$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/launcher3/popup/RemoteActionShortcut$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 58
    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 56
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/popup/RemoteActionShortcut;->mAction:Landroid/app/RemoteAction;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method
