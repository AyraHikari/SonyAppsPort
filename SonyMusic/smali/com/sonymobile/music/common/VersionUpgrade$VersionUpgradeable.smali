.class public interface abstract Lcom/sonymobile/music/common/VersionUpgrade$VersionUpgradeable;
.super Ljava/lang/Object;
.source "VersionUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/music/common/VersionUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VersionUpgradeable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onUpgrade(Landroid/content/Context;II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)TT;"
        }
    .end annotation
.end method

.method public abstract uniqueIdentifier()Ljava/lang/String;
.end method
