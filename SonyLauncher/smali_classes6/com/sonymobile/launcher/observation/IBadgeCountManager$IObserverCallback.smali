.class public interface abstract Lcom/sonymobile/launcher/observation/IBadgeCountManager$IObserverCallback;
.super Ljava/lang/Object;
.source "IBadgeCountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/observation/IBadgeCountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IObserverCallback"
.end annotation


# virtual methods
.method public abstract updateBadgeCount(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sonymobile/launcher/badge/SonyBadgeInfo;",
            ">;)V"
        }
    .end annotation
.end method
