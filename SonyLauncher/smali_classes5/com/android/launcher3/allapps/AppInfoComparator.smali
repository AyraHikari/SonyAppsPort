.class public Lcom/android/launcher3/allapps/AppInfoComparator;
.super Ljava/lang/Object;
.source "AppInfoComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/launcher3/model/data/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLabelComparator:Lcom/android/launcher3/util/LabelComparator;

.field private final mMyUser:Landroid/os/UserHandle;

.field private final mUserManager:Lcom/android/launcher3/pm/UserCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppInfoComparator;->mUserManager:Lcom/android/launcher3/pm/UserCache;

    .line 39
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppInfoComparator;->mMyUser:Landroid/os/UserHandle;

    .line 40
    new-instance v0, Lcom/android/launcher3/util/LabelComparator;

    invoke-direct {v0}, Lcom/android/launcher3/util/LabelComparator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppInfoComparator;->mLabelComparator:Lcom/android/launcher3/util/LabelComparator;

    .line 41
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;)I
    .locals 4
    .param p1, "a"    # Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "b"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 46
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppInfoComparator;->mLabelComparator:Lcom/android/launcher3/util/LabelComparator;

    .line 47
    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    :goto_0
    iget-object v3, p2, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p2, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LabelComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 49
    .local v0, "result":I
    if-eqz v0, :cond_2

    .line 50
    return v0

    .line 54
    :cond_2
    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    return v0

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppInfoComparator;->mMyUser:Landroid/os/UserHandle;

    iget-object v2, p1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 60
    const/4 v1, -0x1

    return v1

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppInfoComparator;->mUserManager:Lcom/android/launcher3/pm/UserCache;

    iget-object v2, p1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 63
    .local v1, "aUserSerial":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/launcher3/allapps/AppInfoComparator;->mUserManager:Lcom/android/launcher3/pm/UserCache;

    iget-object v3, p2, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 64
    .local v2, "bUserSerial":Ljava/lang/Long;
    invoke-virtual {v1, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v3

    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    check-cast p2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/AppInfoComparator;->compare(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;)I

    move-result p1

    return p1
.end method
