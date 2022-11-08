.class public Lcom/android/quickstep/MultiStateCallback;
.super Ljava/lang/Object;
.source "MultiStateCallback.java"


# static fields
.field public static final DEBUG_STATES:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiStateCallback"


# instance fields
.field private final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mState:I

.field private final mStateChangeListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mStateNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "stateNames"    # [Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/MultiStateCallback;->mCallbacks:Landroid/util/SparseArray;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/MultiStateCallback;->mStateChangeListeners:Landroid/util/SparseArray;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/MultiStateCallback;->mStateNames:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method private convertToFlagNames(I)Ljava/lang/String;
    .locals 4
    .param p1, "flags"    # I

    .line 168
    new-instance v0, Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    const-string v3, "["

    invoke-direct {v0, v2, v3, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 169
    .local v0, "joiner":Ljava/util/StringJoiner;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/MultiStateCallback;->mStateNames:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 170
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    .line 171
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 169
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private notifyStateChangeListeners(I)V
    .locals 9
    .param p1, "oldState"    # I

    .line 106
    iget-object v0, p0, Lcom/android/quickstep/MultiStateCallback;->mStateChangeListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 107
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 108
    iget-object v2, p0, Lcom/android/quickstep/MultiStateCallback;->mStateChangeListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 109
    .local v2, "state":I
    and-int v3, v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v2, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v4

    .line 110
    .local v3, "wasOn":Z
    :goto_1
    iget v6, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_1

    move v4, v5

    .line 112
    .local v4, "isOn":Z
    :cond_1
    if-eq v3, v4, :cond_2

    .line 113
    iget-object v5, p0, Lcom/android/quickstep/MultiStateCallback;->mStateChangeListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 114
    .local v5, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/function/Consumer;

    .line 115
    .local v7, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 116
    .end local v7    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    goto :goto_2

    .line 107
    .end local v2    # "state":I
    .end local v3    # "wasOn":Z
    .end local v4    # "isOn":Z
    .end local v5    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public addChangeListener(ILjava/util/function/Consumer;)V
    .locals 2
    .param p1, "stateMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 150
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/quickstep/MultiStateCallback;->mStateChangeListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/quickstep/MultiStateCallback;->mStateChangeListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    goto :goto_0

    .line 153
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .restart local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    iget-object v1, p0, Lcom/android/quickstep/MultiStateCallback;->mStateChangeListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public clearState(I)V
    .locals 3
    .param p1, "stateFlag"    # I

    .line 100
    iget v0, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    .line 101
    .local v0, "oldState":I
    iget v1, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    .line 102
    invoke-direct {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->notifyStateChangeListeners(I)V

    .line 103
    return-void
.end method

.method public getState()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    return v0
.end method

.method public hasStates(I)Z
    .locals 1
    .param p1, "stateMask"    # I

    .line 164
    iget v0, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$setStateOnUiThread$0$com-android-quickstep-MultiStateCallback(I)V
    .locals 0
    .param p1, "stateFlag"    # I

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method public runOnceAtState(ILjava/lang/Runnable;)V
    .locals 2
    .param p1, "stateMask"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 127
    iget v0, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    .line 128
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/MultiStateCallback;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/quickstep/MultiStateCallback;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .local v0, "callbacks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    goto :goto_0

    .line 137
    .end local v0    # "callbacks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 138
    .restart local v0    # "callbacks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    iget-object v1, p0, Lcom/android/quickstep/MultiStateCallback;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v0    # "callbacks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    :goto_1
    return-void
.end method

.method public setState(I)V
    .locals 6
    .param p1, "stateFlag"    # I

    .line 73
    iget v0, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    .line 74
    .local v0, "oldState":I
    iget v1, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    .line 76
    iget-object v1, p0, Lcom/android/quickstep/MultiStateCallback;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 77
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 78
    iget-object v3, p0, Lcom/android/quickstep/MultiStateCallback;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 80
    .local v3, "state":I
    iget v4, p0, Lcom/android/quickstep/MultiStateCallback;->mState:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_0

    .line 81
    iget-object v4, p0, Lcom/android/quickstep/MultiStateCallback;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 82
    .local v4, "callbacks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    :goto_1
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 83
    invoke-virtual {v4}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 77
    .end local v3    # "state":I
    .end local v4    # "callbacks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->notifyStateChangeListeners(I)V

    .line 88
    return-void
.end method

.method public setStateOnUiThread(I)V
    .locals 2
    .param p1, "stateFlag"    # I

    .line 57
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    goto :goto_0

    .line 60
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/MultiStateCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/MultiStateCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/MultiStateCallback;I)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 62
    :goto_0
    return-void
.end method
