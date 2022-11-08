.class public final synthetic Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/PackageUserKey;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda6;->f$0:Lcom/android/launcher3/util/PackageUserKey;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda6;->f$0:Lcom/android/launcher3/util/PackageUserKey;

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->lambda$getWidgetsForPackageUser$6(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/model/WidgetItem;)Z

    move-result p1

    return p1
.end method
