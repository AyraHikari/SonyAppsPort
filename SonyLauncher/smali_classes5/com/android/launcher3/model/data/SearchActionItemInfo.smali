.class public Lcom/android/launcher3/model/data/SearchActionItemInfo;
.super Lcom/android/launcher3/model/data/ItemInfoWithIcon;
.source "SearchActionItemInfo.java"

# interfaces
.implements Lcom/android/launcher3/model/data/WorkspaceItemFactory;


# static fields
.field public static final FLAG_ALLOW_PINNING:I = 0x40

.field public static final FLAG_BADGE_WITH_COMPONENT_NAME:I = 0x20

.field public static final FLAG_BADGE_WITH_PACKAGE:I = 0x8

.field public static final FLAG_PRIMARY_ICON_FROM_TITLE:I = 0x10

.field public static final FLAG_SEARCH_IN_APP:I = 0x80

.field public static final FLAG_SHOULD_START:I = 0x2

.field public static final FLAG_SHOULD_START_FOR_RESULT:I = 0x6


# instance fields
.field private mFallbackPackageName:Ljava/lang/String;

.field private mFlags:I

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIntent:Landroid/content/Intent;

.field private mIsPersonalTitle:Z

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "isPersonalTitle"    # Z

    .line 58
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFlags:I

    .line 59
    iput-boolean p5, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIsPersonalTitle:Z

    .line 60
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->itemType:I

    .line 61
    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->user:Landroid/os/UserHandle;

    .line 62
    iput-object p4, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->title:Ljava/lang/CharSequence;

    .line 63
    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->container:I

    .line 64
    iput-object p2, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFallbackPackageName:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 66
    return-void
.end method

.method private constructor <init>(Lcom/android/launcher3/model/data/SearchActionItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/SearchActionItemInfo;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFlags:I

    .line 70
    return-void
.end method

.method private getIntentPackageName()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFallbackPackageName:Ljava/lang/String;

    return-object v0

    .line 184
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 3
    .param p1, "fInfo"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 136
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFallbackPackageName:Ljava/lang/String;

    .line 137
    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    move-result-object v0

    .line 139
    .local v0, "itemBuilder":Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;
    iget-boolean v1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIsPersonalTitle:Z

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->setTitle(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->getDefaultItemInfoBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v1

    .line 143
    invoke-virtual {v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v1

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 142
    return-object v1
.end method

.method public clone()Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .locals 1

    .line 131
    new-instance v0, Lcom/android/launcher3/model/data/SearchActionItemInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/data/SearchActionItemInfo;-><init>(Lcom/android/launcher3/model/data/SearchActionItemInfo;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->clone()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 74
    invoke-super {p0, p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 75
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/SearchActionItemInfo;

    .line 76
    .local v0, "itemInfo":Lcom/android/launcher3/model/data/SearchActionItemInfo;
    iget-object v1, v0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFallbackPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFallbackPackageName:Ljava/lang/String;

    .line 77
    iget-object v1, v0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 78
    iget v1, v0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFlags:I

    iput v1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFlags:I

    .line 79
    iget-boolean v1, v0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIsPersonalTitle:Z

    iput-boolean v1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIsPersonalTitle:Z

    .line 80
    return-void
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public hasFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 86
    iget v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$makeWorkspaceItem$0$com-android-launcher3-model-data-SearchActionItemInfo(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 3
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 170
    new-instance v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-direct {p0}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->getIntentPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 171
    .local v0, "pkgInfo":Lcom/android/launcher3/model/data/PackageItemInfo;
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V

    .line 172
    iget-object v1, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v2, v0, Lcom/android/launcher3/model/data/PackageItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/icons/BitmapInfo;->withBadgeInfo(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 173
    return-object p2
.end method

.method public makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    .line 161
    .local v0, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 162
    iget-object v1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 163
    iget-object v1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIntent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 165
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->options:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->options:I

    .line 168
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 169
    .local v1, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/data/SearchActionItemInfo$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/launcher3/model/data/SearchActionItemInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/data/SearchActionItemInfo;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherModel;->updateAndBindWorkspaceItem(Ljava/util/function/Supplier;)V

    .line 175
    return-object v0
.end method

.method public setFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 90
    iget v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFlags:I

    .line 91
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SearchActionItemInfo can only have either an Intent or a PendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIntent:Landroid/content/Intent;

    .line 107
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SearchActionItemInfo can only have either an Intent or a PendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 122
    return-void
.end method

.method public supportsPinning()Z
    .locals 1

    .line 152
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->getIntentPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
