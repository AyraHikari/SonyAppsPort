.class public Lcom/android/launcher3/model/data/WorkspaceItemInfo;
.super Lcom/android/launcher3/model/data/ItemInfoWithIcon;
.source "WorkspaceItemInfo.java"


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final FLAG_AUTOINSTALL_ICON:I = 0x2

.field public static final FLAG_RESTORED_ICON:I = 0x1

.field public static final FLAG_RESTORE_STARTED:I = 0x4

.field public static final FLAG_START_FOR_RESULT:I = 0x10

.field public static final FLAG_SUPPORTS_WEB_UI:I = 0x8


# instance fields
.field public disabledMessage:Ljava/lang/CharSequence;

.field public iconResource:Landroid/content/Intent$ShortcutIconResource;

.field public intent:Landroid/content/Intent;

.field public options:I

.field private personKeys:[Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>()V

    .line 98
    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->personKeys:[Ljava/lang/String;

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V
    .locals 1
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "context"    # Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>()V

    .line 98
    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->personKeys:[Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    .line 128
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 118
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 98
    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->personKeys:[Ljava/lang/String;

    .line 119
    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 98
    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->personKeys:[Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 110
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 111
    iget-object v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 112
    iget v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    iput v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    .line 113
    iget-object v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->personKeys:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->personKeys:[Ljava/lang/String;

    .line 114
    return-void
.end method

.method static synthetic lambda$updateFromDeepShortcutInfo$0(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 192
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->clone()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 1

    .line 229
    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->clone()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeepShortcutId()Ljava/lang/String;
    .locals 2

    .line 204
    iget v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shortcut_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 204
    :goto_0
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPersonKeys()[Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->personKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 4

    .line 215
    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 216
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_2

    iget v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "."

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2

    .line 224
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public hasPromiseIconUi()Z
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatusFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 155
    iget v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisabledVersionLower()Z
    .locals 1

    .line 199
    iget v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPromise()Z
    .locals 1

    .line 160
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 3
    .param p1, "writer"    # Lcom/android/launcher3/util/ContentWriter;

    .line 134
    invoke-super {p0, p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Landroid/content/Intent;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->options:I

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "restored"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->usingLowResIcon()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->putIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ContentWriter;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    const-string v1, "iconPackage"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 145
    const-string v2, "iconResource"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    .line 147
    :cond_1
    return-void
.end method

.method public updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V
    .locals 4
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "context"    # Landroid/content/Context;

    .line 169
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->makeIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 170
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 172
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 173
    .local v0, "label":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 176
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 177
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    goto :goto_0

    .line 180
    :cond_1
    iget v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    .line 182
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->disabledMessage:Ljava/lang/CharSequence;

    .line 183
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 185
    iget v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    goto :goto_1

    .line 187
    :cond_2
    iget v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    .line 190
    :goto_1
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/ApiWrapper;->getPersons(Landroid/content/pm/ShortcutInfo;)[Landroid/app/Person;

    move-result-object v1

    .line 191
    .local v1, "persons":[Landroid/app/Person;
    array-length v2, v1

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_2

    .line 192
    :cond_3
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    :goto_2
    iput-object v2, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->personKeys:[Ljava/lang/String;

    .line 193
    return-void
.end method
