.class public final synthetic Lcom/android/launcher3/util/PersistedItemArray$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/pm/UserCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/pm/UserCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/PersistedItemArray$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/pm/UserCache;

    return-void
.end method


# virtual methods
.method public final apply(J)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/PersistedItemArray$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/pm/UserCache;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p1

    return-object p1
.end method
