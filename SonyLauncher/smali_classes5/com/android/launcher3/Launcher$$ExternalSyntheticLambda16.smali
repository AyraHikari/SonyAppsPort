.class public final synthetic Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/launcher3/DeviceProfile;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->lambda$getPagesToBindSynchronously$8(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p1

    return p1
.end method
