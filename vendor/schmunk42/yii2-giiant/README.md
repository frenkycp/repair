yii2-giiant
===========

> "Giiant is huge!"

**PROJECT IS IN BETA STAGE! Note: Major changes from 0.4 to 0.5 ...**


What is this?
-------------

Giiant is an extended code-generator for models and CRUDs, based upon *Gii* (Yii 2.0 Framework).

It creates prototypes for database models and backends including relations defined by foreign-key constrains in no-time.

To provide a highly flexible configuration system it features a *callback-provider-queue* to define rendering of customized inputs, columns or attribute values.

A main project goal is porting many features and learnings from *gtc*, *giix*, *awecrud* and other code-generators into one solution.


Resources
---------

- [Documentation](docs/README.md)
- [Project Source-Code](https://github.com/schmunk42/yii2-giiant)
- [Packagist](https://packagist.org/packages/schmunk42/yii2-giiant)
- [Yii Extensions](http://www.yiiframework.com/extension/yii2-giiant/)


Installation
------------

The preferred way to install this extension is through [composer](http://getcomposer.org/download/).

    composer require schmunk42/yii2-giiant:"*"

The generators are registered automatically in the application bootstrap process, if *Gii* module is enabled.

- [Phundament](http://phundament.com) core-module


Usage
-----

To create a full-featured database backend, run the CLI batch command

```
./yii giiant-batch \
    --modelNamespace=app\\models \
    --crudControllerNamespace=app\\modules\\crud\\controllers \
    --crudSearchModelNamespace=app\\modules\\crud\\models\\search \
    --crudViewPath=@app/modules/crud/views \
    --tables=actor,film,film_actor,language,film_category,category,inventory,store,rental,payment,customer,staff,address,city,country
```



Features
--------

### Model generator

- generates separate model classes to customize and base models classes which can be regenerated on schema changes
- table prefixes can be stipped off model class names (not bound to `db` connection settings from Yii 2.0)

### CRUD generator

- input, attribute, column and relation customization with provider queues
- callback provider to inject any kind of code for inputs, attributes and columns via dependency injection
- virtual-relation support (non-foreign key relations)
- model, view and controller locations can be customized to use subfolders
- horizontal and vertical form layout
- action button class customization (Select "App Class" option on the  Action Button Class option on CRUD generator to customize)

### Batch command

- creates all models and/or CRUDs for a set of tables sequentially


Extras
------

Special thanks to [motin](https://github.com/motin), [thyseus](https://github.com/thyseus), [uldisn](https://github.com/uldisn) and [rcoelho](https://github.com/rcoelho) for their work, inspirations and feedback.


Screenshots
-----------

![giiant-0 2-screen-1](https://cloud.githubusercontent.com/assets/649031/5692432/c93fd82c-98f5-11e4-8b52-8f35df52986f.png)
![giiant-0 2-screen-2](https://cloud.githubusercontent.com/assets/649031/5692429/c9189492-98f5-11e4-969f-02a302ca6974.png)

