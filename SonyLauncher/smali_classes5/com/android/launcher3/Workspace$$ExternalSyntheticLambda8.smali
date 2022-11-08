.class public final synthetic Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/PackageUserKey;

.field public final synthetic f$1:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda8;->f$0:Lcom/android/launcher3/util/PackageUserKey;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda8;->f$1:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda8;->f$0:Lcom/android/launcher3/util/PackageUserKey;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda8;->f$1:Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/Workspace;->lambda$updateNotificationDots$12(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    return p1
.end method
