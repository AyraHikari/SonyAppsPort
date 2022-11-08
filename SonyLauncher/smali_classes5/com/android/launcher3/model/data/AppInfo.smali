.class public Lcom/android/launcher3/model/data/AppInfo;
.super Lcom/android/launcher3/model/data/ItemInfoWithIcon;
.source "AppInfo.java"

# interfaces
.implements Lcom/android/launcher3/model/data/WorkspaceItemFactory;


# static fields
.field public static final COMPONENT_KEY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Lcom/android/launcher3/model/data/AppInfo;


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public installReason:I

.field public intent:Landroid/content/Intent;

.field public sectionName:Ljava/lang/String;

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/model/data/AppInfo;

    sput-object v0, Lcom/android/launcher3/model/data/AppInfo;->EMPTY_ARRAY:[Lcom/android/launcher3/model/data/AppInfo;

    .line 53
    new-instance v0, Lcom/android/launcher3/model/data/AppInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/AppInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/data/AppInfo;->COMPONENT_KEY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/data/AppInfo;->installReason:I

    .line 72
    iput v0, p0, Lcom/android/launcher3/model/data/AppInfo;->itemType:I

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/os/UserHandle;Landroid/content/Intent;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "intent"    # Landroid/content/Intent;

    .line 114
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/data/AppInfo;->installReason:I

    .line 115
    iput-object p1, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 116
    iput-object p2, p0, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    .line 117
    iput-object p3, p0, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    .line 118
    iput-object p4, p0, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/LauncherActivityInfo;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 84
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p3}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Ljava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/LauncherActivityInfo;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 88
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p4}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    invoke-direct {p0, p2, p4, v0}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    .line 89
    iput-object p3, p0, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/LauncherActivityInfo;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "quietModeEnabled"    # Z

    .line 92
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/data/AppInfo;->installReason:I

    .line 93
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 94
    const/16 v0, -0x66

    iput v0, p0, Lcom/android/launcher3/model/data/AppInfo;->container:I

    .line 95
    iput-object p2, p0, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    .line 96
    invoke-static {p1}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 98
    if-eqz p3, :cond_0

    .line 99
    iget v0, p0, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    .line 101
    :cond_0
    invoke-static {p0, p1}, Lcom/android/launcher3/model/data/AppInfo;->updateRuntimeFlagsForActivityTarget(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/data/AppInfo;->installReason:I

    .line 106
    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 107
    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    .line 108
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 109
    iget v0, p1, Lcom/android/launcher3/model/data/AppInfo;->status:I

    iput v0, p0, Lcom/android/launcher3/model/data/AppInfo;->status:I

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2
    .param p1, "shortcutInfo"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 132
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/data/AppInfo;->installReason:I

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/data/AppInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 134
    iget-object v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 135
    iget v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    iput v0, p0, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    .line 136
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 137
    iget-object v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    .line 138
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 139
    iget v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    iput v0, p0, Lcom/android/launcher3/model/data/AppInfo;->status:I

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/pm/PackageInstallInfo;)V
    .locals 2
    .param p1, "installInfo"    # Lcom/android/launcher3/pm/PackageInstallInfo;

    .line 121
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/data/AppInfo;->installReason:I

    .line 122
    iget-object v0, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 126
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/data/AppInfo;->setProgressLevel(Lcom/android/launcher3/pm/PackageInstallInfo;)V

    .line 129
    iget-object v0, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    .line 130
    return-void
.end method

.method static synthetic lambda$static$0(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;)I
    .locals 3
    .param p0, "a"    # Lcom/android/launcher3/model/data/AppInfo;
    .param p1, "b"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    .line 55
    .local v0, "uc":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public static makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p0, "cn"    # Landroid/content/ComponentName;

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 177
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 174
    return-object v0
.end method

.method public static makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;
    .locals 1
    .param p0, "info"    # Landroid/content/pm/LauncherActivityInfo;

    .line 170
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static updateRuntimeFlagsForActivityTarget(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 3
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p1, "lai"    # Landroid/content/pm/LauncherActivityInfo;

    .line 189
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 190
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    .line 193
    :cond_0
    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 194
    const/16 v2, 0x80

    goto :goto_0

    :cond_1
    const/16 v2, 0x40

    :goto_0
    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    .line 196
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 197
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    .line 203
    :cond_2
    nop

    .line 204
    invoke-static {p1}, Lcom/android/launcher3/util/PackageManagerHelper;->getLoadingProgress(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v1

    const/4 v2, 0x2

    .line 203
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->setProgressLevel(II)V

    .line 206
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/launcher3/model/data/AppInfo;
    .locals 1

    .line 210
    new-instance v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/AppInfo;->clone()Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/AppInfo;->clone()Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 149
    iget v0, p0, Lcom/android/launcher3/model/data/AppInfo;->id:I

    .line 150
    .local v0, "savedId":I
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/model/data/AppInfo;->id:I

    .line 151
    new-instance v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 152
    .local v1, "workspaceItemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iput v0, p0, Lcom/android/launcher3/model/data/AppInfo;->id:I

    .line 154
    iget v2, p0, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_0

    .line 156
    iget v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    .line 159
    iget v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    .line 160
    iget v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    .line 162
    :cond_0
    iget v2, p0, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_1

    .line 163
    iget v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    .line 166
    :cond_1
    return-object v1
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 3
    .param p1, "writer"    # Lcom/android/launcher3/util/ContentWriter;

    .line 215
    invoke-super {p0, p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Landroid/content/Intent;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/AppInfo;->status:I

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "restored"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    .line 219
    return-void
.end method
