.class public final synthetic Lcom/android/launcher3/dragndrop/AddItemActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/dragndrop/AddItemActivity;

.field public final synthetic f$1:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/dragndrop/AddItemActivity;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/dragndrop/AddItemActivity;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$setupWidget$1$com-android-launcher3-dragndrop-AddItemActivity(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object v0

    return-object v0
.end method
