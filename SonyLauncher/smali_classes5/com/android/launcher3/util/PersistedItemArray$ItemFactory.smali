.class public interface abstract Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;
.super Ljava/lang/Object;
.source "PersistedItemArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/PersistedItemArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createInfo(ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/data/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/UserHandle;",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation
.end method
