.class public Lcom/android/launcher3/model/UserManagerState;
.super Ljava/lang/Object;
.source "UserManagerState.java"


# instance fields
.field public final allUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mQuietUsersHashCodeMap:Landroid/util/SparseBooleanArray;

.field private final mQuietUsersSerialNoMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/UserManagerState;->allUsers:Landroid/util/LongSparseArray;

    .line 32
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/UserManagerState;->mQuietUsersSerialNoMap:Landroid/util/LongSparseArray;

    .line 33
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/UserManagerState;->mQuietUsersHashCodeMap:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public init(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserManager;)V
    .locals 7
    .param p1, "userCache"    # Lcom/android/launcher3/pm/UserCache;
    .param p2, "userManager"    # Landroid/os/UserManager;

    .line 39
    invoke-virtual {p2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 40
    .local v1, "user":Landroid/os/UserHandle;
    invoke-virtual {p1, v1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 41
    .local v2, "serialNo":J
    invoke-virtual {p2, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    .line 42
    .local v4, "isUserQuiet":Z
    iget-object v5, p0, Lcom/android/launcher3/model/UserManagerState;->allUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 43
    iget-object v5, p0, Lcom/android/launcher3/model/UserManagerState;->mQuietUsersHashCodeMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 44
    iget-object v5, p0, Lcom/android/launcher3/model/UserManagerState;->mQuietUsersSerialNoMap:Landroid/util/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 45
    .end local v1    # "user":Landroid/os/UserHandle;
    .end local v2    # "serialNo":J
    .end local v4    # "isUserQuiet":Z
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public isAnyProfileQuietModeEnabled()Z
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/model/UserManagerState;->mQuietUsersHashCodeMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 67
    iget-object v2, p0, Lcom/android/launcher3/model/UserManagerState;->mQuietUsersHashCodeMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    return v1

    .line 66
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 71
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isUserQuiet(J)Z
    .locals 1
    .param p1, "serialNo"    # J

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/model/UserManagerState;->mQuietUsersSerialNoMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isUserQuiet(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/model/UserManagerState;->mQuietUsersHashCodeMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method
