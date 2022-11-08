.class public interface abstract Lcom/android/launcher3/logger/LauncherAtom$ApplicationOrBuilder;
.super Ljava/lang/Object;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApplicationOrBuilder"
.end annotation


# virtual methods
.method public abstract getComponentName()Ljava/lang/String;
.end method

.method public abstract getComponentNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPackageNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasComponentName()Z
.end method

.method public abstract hasPackageName()Z
.end method
