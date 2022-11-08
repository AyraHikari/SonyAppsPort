.class public Lcom/android/launcher3/touch/ItemClickHandler;
.super Ljava/lang/Object;
.source "ItemClickHandler.java"


# static fields
.field public static final INSTANCE:Landroid/view/View$OnClickListener;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$c3IcSovkrXGdCZtXy0f_A5Sz5VA(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Lcom/android/launcher3/touch/ItemClickHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/ItemClickHandler;->TAG:Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleDisabledItemClicked(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/Context;)Z
    .locals 5
    .param p0, "shortcut"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p1, "context"    # Landroid/content/Context;

    .line 212
    iget v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0x103f

    .line 216
    .local v0, "disabledFlags":I
    invoke-static {p0, p1}, Lcom/android/launcher3/touch/ItemClickHandler;->maybeCreateAlertDialogForShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 217
    return v2

    .line 220
    :cond_0
    and-int/lit8 v1, v0, -0x5

    and-int/lit8 v1, v1, -0x9

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 225
    return v3

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 230
    return v2

    .line 233
    :cond_2
    sget v1, Lcom/android/launcher3/R$string;->activity_not_available:I

    .line 234
    .local v1, "error":I
    iget v4, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_3

    .line 235
    sget v1, Lcom/android/launcher3/R$string;->safemode_shortcut_error:I

    goto :goto_0

    .line 236
    :cond_3
    iget v4, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_5

    .line 238
    :cond_4
    sget v1, Lcom/android/launcher3/R$string;->shortcut_not_available:I

    .line 240
    :cond_5
    :goto_0
    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 241
    return v2
.end method

.method static synthetic lambda$maybeCreateAlertDialogForShortcut$2(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcut"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 257
    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    return-void
.end method

.method static synthetic lambda$maybeCreateAlertDialogForShortcut$3(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "shortcut"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 261
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 263
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v1

    .line 262
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofShortcutKeys(Ljava/util/Set;)Ljava/util/function/Predicate;

    move-result-object v1

    .line 261
    const-string v2, "user explicitly removes disabled shortcut"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->persistRemoveItemsByMatcher(Ljava/util/function/Predicate;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method static synthetic lambda$onClickPendingAppItem$0(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "d"    # Landroid/content/DialogInterface;
    .param p4, "i"    # I

    .line 175
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->startMarketIntentForPackage(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onClickPendingAppItem$1(Lcom/android/launcher3/Launcher;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "d"    # Landroid/content/DialogInterface;
    .param p4, "i"    # I

    .line 177
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 179
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 178
    invoke-static {v1, p2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v1

    const-string v2, "user explicitly removes the promise app icon"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->persistRemoveItemsByMatcher(Ljava/util/function/Predicate;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private static maybeCreateAlertDialogForShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/Context;)Z
    .locals 4
    .param p0, "shortcut"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p1, "context"    # Landroid/content/Context;

    .line 248
    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 249
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    iget v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isDisabledVersionLower()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/launcher3/R$string;->dialog_update_title:I

    .line 253
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->dialog_update_message:I

    .line 254
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->dialog_update:I

    new-instance v3, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, p0}, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 255
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->dialog_remove:I

    new-instance v3, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, p0}, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 259
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    const/4 v1, 0x1

    return v1

    .line 272
    .end local v0    # "launcher":Lcom/android/launcher3/Launcher;
    :cond_0
    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/launcher3/touch/ItemClickHandler;->TAG:Ljava/lang/String;

    const-string v2, "Error creating alert dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static onClick(Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 93
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 96
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_2

    .line 97
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p0, v2, v0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickAppShortcut(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/Launcher;)V

    goto :goto_0

    .line 98
    :cond_2
    instance-of v2, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v2, :cond_3

    .line 99
    instance-of v2, p0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v2, :cond_6

    .line 100
    invoke-static {p0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickFolderIcon(Landroid/view/View;)V

    goto :goto_0

    .line 102
    :cond_3
    instance-of v2, v1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v2, :cond_4

    .line 103
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p0, v2, v0}, Lcom/android/launcher3/touch/ItemClickHandler;->startAppShortcutOrInfoActivity(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/Launcher;)V

    goto :goto_0

    .line 104
    :cond_4
    instance-of v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v2, :cond_5

    .line 105
    instance-of v2, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v2, :cond_6

    .line 106
    move-object v2, p0

    check-cast v2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-static {v2, v0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickPendingWidget(Lcom/android/launcher3/widget/PendingAppWidgetHostView;Lcom/android/launcher3/Launcher;)V

    goto :goto_0

    .line 108
    :cond_5
    instance-of v2, v1, Lcom/android/launcher3/model/data/SearchActionItemInfo;

    if-eqz v2, :cond_6

    .line 109
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/SearchActionItemInfo;

    invoke-static {v0, v2}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickSearchAction(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/SearchActionItemInfo;)V

    .line 111
    :cond_6
    :goto_0
    return-void
.end method

.method public static onClickAppShortcut(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "shortcut"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 283
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->handleDisabledItemClicked(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    return-void

    .line 288
    :cond_0
    instance-of v0, p0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 292
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 293
    iget v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {p0, p2, v0, v1}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickPendingAppItem(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;Z)V

    .line 299
    return-void

    .line 304
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->startAppShortcutOrInfoActivity(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/Launcher;)V

    .line 305
    return-void
.end method

.method private static onClickFolderIcon(Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .line 119
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 120
    .local v0, "folder":Lcom/android/launcher3/folder/Folder;
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->animateOpen()V

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_OPEN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 124
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 126
    :cond_0
    return-void
.end method

.method private static onClickPendingAppItem(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "downloadStarted"    # Z

    .line 164
    if-eqz p3, :cond_0

    .line 166
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->startMarketIntentForPackage(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V

    .line 167
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 171
    .local v0, "user":Landroid/os/UserHandle;
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/launcher3/R$string;->abandoned_promises_title:I

    .line 172
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->abandoned_promise_explanation:I

    .line 173
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->abandoned_search:I

    new-instance v3, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->abandoned_clean_this:I

    new-instance v3, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, p2, v0}, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/Launcher;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 176
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 182
    return-void
.end method

.method private static onClickPendingWidget(Lcom/android/launcher3/widget/PendingAppWidgetHostView;Lcom/android/launcher3/Launcher;)V
    .locals 5
    .param p0, "v"    # Lcom/android/launcher3/widget/PendingAppWidgetHostView;
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 132
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 133
    sget v0, Lcom/android/launcher3/R$string;->safemode_widget_error:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 134
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 138
    .local v0, "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 139
    new-instance v1, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v1, p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 140
    invoke-virtual {v1, v2, v4}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 141
    .local v1, "appWidgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    if-nez v1, :cond_1

    .line 142
    return-void

    .line 144
    :cond_1
    new-instance v2, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    invoke-direct {v2, v1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 146
    .local v2, "addFlowHandler":Lcom/android/launcher3/widget/WidgetAddFlowHandler;
    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    return-void

    .line 151
    :cond_2
    iget v3, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v4, 0xc

    invoke-virtual {v2, p1, v3, v0, v4}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startBindFlow(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/ItemInfo;I)V

    goto :goto_0

    .line 154
    :cond_3
    const/16 v3, 0xd

    invoke-virtual {v2, p1, v0, v3}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;I)Z

    .line 156
    .end local v1    # "appWidgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .end local v2    # "addFlowHandler":Lcom/android/launcher3/widget/WidgetAddFlowHandler;
    :goto_0
    goto :goto_1

    .line 157
    :cond_4
    iget-object v2, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "packageName":Ljava/lang/String;
    iget v4, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    if-ltz v4, :cond_5

    move v1, v3

    :cond_5
    invoke-static {p0, p1, v2, v1}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickPendingAppItem(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;Z)V

    .line 160
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method public static onClickSearchAction(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/SearchActionItemInfo;)V
    .locals 10
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/SearchActionItemInfo;

    .line 311
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p1, v2}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 315
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 317
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 319
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 320
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->hasFlags(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 321
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 323
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/Launcher;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0

    .line 326
    :cond_3
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/Launcher;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v0    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_0
    goto :goto_1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/util/AndroidException;
    nop

    .line 330
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$string;->shortcut_not_available:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 329
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 334
    .end local v0    # "e":Landroid/util/AndroidException;
    :cond_4
    :goto_1
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 335
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_SEARCHINAPP_LAUNCH:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_2

    .line 338
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 341
    :goto_2
    return-void
.end method

.method private static startAppShortcutOrInfoActivity(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 344
    const-string v0, "Main"

    const-string v1, "start: startAppShortcutOrInfoActivity"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    instance-of v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    .line 350
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 351
    .local v0, "appInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    new-instance v1, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v1, p2}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 352
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 353
    .local v0, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 354
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 356
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v0, :cond_4

    .line 359
    instance-of v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_2

    .line 360
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 361
    .local v1, "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v2

    .line 368
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    :cond_1
    iget v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->options:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 371
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/android/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 372
    new-instance v2, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v2}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v2}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v2

    .line 373
    .local v2, "instanceId":Lcom/android/launcher3/logging/InstanceId;
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v3

    invoke-virtual {p2, v3, p1, v2}, Lcom/android/launcher3/Launcher;->logAppLaunch(Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    .line 374
    return-void

    .line 377
    .end local v1    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v2    # "instanceId":Lcom/android/launcher3/logging/InstanceId;
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p2, p0}, Lcom/android/launcher3/Launcher;->supportsAdaptiveIconAnimation(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 379
    const/4 v1, 0x1

    invoke-static {p2, p0, p1, v1}, Lcom/android/launcher3/views/FloatingIconView;->fetchIcon(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    .line 381
    :cond_3
    invoke-virtual {p2, p0, v0, p1}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    .line 382
    return-void

    .line 357
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input must have a valid intent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static startMarketIntentForPackage(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V
    .locals 7
    .param p0, "v"    # Landroid/view/View;
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 186
    .local v0, "item":Lcom/android/launcher3/model/data/ItemInfo;
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v1, :cond_0

    .line 187
    sget-object v1, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/InstallSessionHelper;

    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 188
    invoke-virtual {v1, v2, p2}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessionInfo(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    .line 189
    .local v1, "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v1, :cond_0

    .line 190
    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps;

    .line 192
    .local v2, "launcherApps":Landroid/content/pm/LauncherApps;
    const/4 v3, 0x0

    .line 193
    :try_start_0
    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/Launcher;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 192
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/LauncherApps;->startPackageInstallerSessionDetailsActivity(Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return-void

    .line 195
    :catch_0
    move-exception v3

    .line 196
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/launcher3/touch/ItemClickHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to launch market intent for package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .end local v1    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    .end local v2    # "launcherApps":Landroid/content/pm/LauncherApps;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v1, p1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 203
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1, p0, v1, v0}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    .line 204
    return-void
.end method
