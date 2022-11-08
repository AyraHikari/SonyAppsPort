.class public interface abstract Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;
.super Ljava/lang/Object;
.source "PopupDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/PopupDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PopupDataChangeListener"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 276
    new-instance v0, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener$1;

    invoke-direct {v0}, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->INSTANCE:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    return-void
.end method


# virtual methods
.method public onNotificationDotsUpdated(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    .line 278
    .local p1, "updatedDots":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/util/PackageUserKey;>;"
    return-void
.end method

.method public onRecommendedWidgetsBound()V
    .locals 0

    .line 285
    return-void
.end method

.method public onSystemShortcutsUpdated()V
    .locals 0

    .line 288
    return-void
.end method

.method public onWidgetsBound()V
    .locals 0

    .line 282
    return-void
.end method

.method public trimNotifications(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/dot/DotInfo;",
            ">;)V"
        }
    .end annotation

    .line 280
    .local p1, "updatedDots":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/DotInfo;>;"
    return-void
.end method
