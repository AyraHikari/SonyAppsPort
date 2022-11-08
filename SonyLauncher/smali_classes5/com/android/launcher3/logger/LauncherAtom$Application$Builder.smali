.class public final Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$ApplicationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$Application;",
        "Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$ApplicationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7860
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Application;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7861
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$Application$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearComponentName()Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 1

    .line 7948
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->copyOnWrite()V

    .line 7949
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->-$$Nest$mclearComponentName(Lcom/android/launcher3/logger/LauncherAtom$Application;)V

    .line 7950
    return-object p0
.end method

.method public clearPackageName()Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 1

    .line 7899
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->copyOnWrite()V

    .line 7900
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->-$$Nest$mclearPackageName(Lcom/android/launcher3/logger/LauncherAtom$Application;)V

    .line 7901
    return-object p0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 7925
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getComponentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComponentNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7933
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getComponentNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 7876
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7884
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getPackageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasComponentName()Z
    .locals 1

    .line 7918
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->hasComponentName()Z

    move-result v0

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .line 7869
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->hasPackageName()Z

    move-result v0

    return v0
.end method

.method public setComponentName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 7940
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->copyOnWrite()V

    .line 7941
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Application;->-$$Nest$msetComponentName(Lcom/android/launcher3/logger/LauncherAtom$Application;Ljava/lang/String;)V

    .line 7942
    return-object p0
.end method

.method public setComponentNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 7957
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->copyOnWrite()V

    .line 7958
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Application;->-$$Nest$msetComponentNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Application;Lcom/google/protobuf/ByteString;)V

    .line 7959
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 7891
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->copyOnWrite()V

    .line 7892
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Application;->-$$Nest$msetPackageName(Lcom/android/launcher3/logger/LauncherAtom$Application;Ljava/lang/String;)V

    .line 7893
    return-object p0
.end method

.method public setPackageNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 7908
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->copyOnWrite()V

    .line 7909
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Application;->-$$Nest$msetPackageNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Application;Lcom/google/protobuf/ByteString;)V

    .line 7910
    return-object p0
.end method
