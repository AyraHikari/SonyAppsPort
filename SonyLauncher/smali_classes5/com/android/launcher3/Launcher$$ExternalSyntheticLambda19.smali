.class public final synthetic Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/os/UserHandle;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda19;->f$0:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda19;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda19;->f$0:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda19;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/Launcher;->lambda$getFirstMatchForAppClose$13(Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    return p1
.end method
