.class public Lcom/android/launcher3/notification/NotificationKeyData;
.super Ljava/lang/Object;
.source "NotificationKeyData.java"


# instance fields
.field public count:I

.field public final notificationKey:Ljava/lang/String;

.field public final personKeysFromNotification:[Ljava/lang/String;

.field public final shortcutId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1
    .param p1, "notificationKey"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "personKeysFromNotification"    # [Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/android/launcher3/notification/NotificationKeyData;->shortcutId:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    .line 49
    iput-object p4, p0, Lcom/android/launcher3/notification/NotificationKeyData;->personKeysFromNotification:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static extractKeysOnly(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    .local p0, "notificationKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/notification/NotificationKeyData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .local v0, "keysOnly":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/notification/NotificationKeyData;

    .line 63
    .local v2, "notificationKeyData":Lcom/android/launcher3/notification/NotificationKeyData;
    iget-object v3, v2, Lcom/android/launcher3/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v2    # "notificationKeyData":Lcom/android/launcher3/notification/NotificationKeyData;
    goto :goto_0

    .line 65
    :cond_0
    return-object v0
.end method

.method private static extractPersonKeyOnly(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/Person;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 69
    .local p0, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/notification/NotificationKeyData$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/notification/NotificationKeyData$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 73
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/notification/NotificationKeyData$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/launcher3/notification/NotificationKeyData$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 72
    return-object v0

    .line 70
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method public static fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationKeyData;
    .locals 7
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 53
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 54
    .local v0, "notif":Landroid/app/Notification;
    new-instance v1, Lcom/android/launcher3/notification/NotificationKeyData;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/app/Notification;->number:I

    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 55
    const-string v6, "android.people.list"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/notification/NotificationKeyData;->extractPersonKeyOnly(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/launcher3/notification/NotificationKeyData;-><init>(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 54
    return-object v1
.end method

.method static synthetic lambda$extractPersonKeyOnly$0(Landroid/app/Person;)Z
    .locals 1
    .param p0, "person"    # Landroid/app/Person;

    .line 72
    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$extractPersonKeyOnly$1(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 73
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 78
    instance-of v0, p1, Lcom/android/launcher3/notification/NotificationKeyData;

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/notification/NotificationKeyData;

    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
