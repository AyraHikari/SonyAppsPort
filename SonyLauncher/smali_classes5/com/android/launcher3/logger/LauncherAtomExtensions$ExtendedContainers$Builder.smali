.class public final Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtomExtensions.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;",
        "Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainersOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 247
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearContainer()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->copyOnWrite()V

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->-$$Nest$mclearContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V

    .line 259
    return-object p0
.end method

.method public clearDeviceSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->copyOnWrite()V

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->-$$Nest$mclearDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V

    .line 308
    return-object p0
.end method

.method public getContainerCase()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getDeviceSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    move-result-object v0

    return-object v0
.end method

.method public hasDeviceSearchResultContainer()Z
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->hasDeviceSearchResultContainer()Z

    move-result v0

    return v0
.end method

.method public mergeDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->copyOnWrite()V

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->-$$Nest$mmergeDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)V

    .line 300
    return-object p0
.end method

.method public setDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->copyOnWrite()V

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->-$$Nest$msetDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;)V

    .line 292
    return-object p0
.end method

.method public setDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    .line 281
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->copyOnWrite()V

    .line 282
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->-$$Nest$msetDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)V

    .line 283
    return-object p0
.end method
