.class public Lcom/android/launcher3/notification/NotificationGroup;
.super Ljava/lang/Object;
.source "NotificationGroup.java"


# instance fields
.field private mChildKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupSummaryKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationGroup;->mChildKeys:Ljava/util/Set;

    .line 31
    return-void
.end method


# virtual methods
.method public addChildKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "childKey"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationGroup;->mChildKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public getGroupSummaryKey()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationGroup;->mGroupSummaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationGroup;->mChildKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeChildKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "childKey"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationGroup;->mChildKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public setGroupSummaryKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupSummaryKey"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationGroup;->mGroupSummaryKey:Ljava/lang/String;

    .line 35
    return-void
.end method
