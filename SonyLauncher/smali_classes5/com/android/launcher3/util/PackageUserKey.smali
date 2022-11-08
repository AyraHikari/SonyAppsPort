.class public Lcom/android/launcher3/util/PackageUserKey;
.super Ljava/lang/Object;
.source "PackageUserKey.java"


# instance fields
.field private mHashCode:I

.field public mPackageName:Ljava/lang/String;

.field public mUser:Landroid/os/UserHandle;

.field public mWidgetCategory:I


# direct methods
.method public constructor <init>(ILandroid/os/UserHandle;)V
    .locals 1
    .param p1, "widgetCategory"    # I
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 45
    return-void
.end method

.method public static fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;
    .locals 3
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 27
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public static fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/util/PackageUserKey;
    .locals 3
    .param p0, "notification"    # Landroid/service/notification/StatusBarNotification;

    .line 32
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public static fromPackageItemInfo(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/util/PackageUserKey;
    .locals 3
    .param p0, "info"    # Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 37
    iget-object v0, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 38
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    iget v1, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    iget-object v2, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(ILandroid/os/UserHandle;)V

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v1, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method private update(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "widgetCategory"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 56
    iput-object p1, p0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    .line 57
    iput p2, p0, Lcom/android/launcher3/util/PackageUserKey;->mWidgetCategory:I

    .line 58
    iput-object p3, p0, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/PackageUserKey;->mHashCode:I

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 82
    instance-of v0, p1, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 83
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/util/PackageUserKey;

    .line 84
    .local v0, "otherKey":Lcom/android/launcher3/util/PackageUserKey;
    iget-object v2, p0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/util/PackageUserKey;->mWidgetCategory:I

    iget v3, v0, Lcom/android/launcher3/util/PackageUserKey;->mWidgetCategory:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    iget-object v3, v0, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    .line 86
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 84
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/android/launcher3/util/PackageUserKey;->mHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/util/PackageUserKey;->mWidgetCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 52
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 53
    return-void
.end method

.method public updateFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 67
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 70
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_1
    return v1
.end method
