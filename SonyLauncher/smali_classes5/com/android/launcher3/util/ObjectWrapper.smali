.class public Lcom/android/launcher3/util/ObjectWrapper;
.super Landroid/os/Binder;
.source "ObjectWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Binder;"
    }
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lcom/android/launcher3/util/ObjectWrapper;, "Lcom/android/launcher3/util/ObjectWrapper<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/launcher3/util/ObjectWrapper;->mObject:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public static unwrap(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1
    .param p0, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    .line 47
    instance-of v0, p0, Lcom/android/launcher3/util/ObjectWrapper;

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/util/ObjectWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static wrap(Ljava/lang/Object;)Landroid/os/IBinder;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/android/launcher3/util/ObjectWrapper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 39
    .local p0, "this":Lcom/android/launcher3/util/ObjectWrapper;, "Lcom/android/launcher3/util/ObjectWrapper<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/ObjectWrapper;->mObject:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 35
    .local p0, "this":Lcom/android/launcher3/util/ObjectWrapper;, "Lcom/android/launcher3/util/ObjectWrapper<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/ObjectWrapper;->mObject:Ljava/lang/Object;

    return-object v0
.end method
