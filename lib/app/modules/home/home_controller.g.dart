// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$currentPageAtom = Atom(name: '_HomeControllerBase.currentPage');

  @override
  int get currentPage {
    _$currentPageAtom.context.enforceReadPolicy(_$currentPageAtom);
    _$currentPageAtom.reportObserved();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.context.conditionallyRunInAction(() {
      super.currentPage = value;
      _$currentPageAtom.reportChanged();
    }, _$currentPageAtom, name: '${_$currentPageAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void changePage(int currentPage) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.changePage(currentPage);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'currentPage: ${currentPage.toString()}';
    return '{$string}';
  }
}
